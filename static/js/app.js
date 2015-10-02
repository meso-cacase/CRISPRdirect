Ext.define('app', {
	singleton: true,
	config: {
		appName: 'CRISPRdirect',
		regexpName2Id : /[^A-Za-z0-9]/g,
	},
	constructor: function(config) {
		this.initConfig(config);
		return this;
	},
	warn : function(msg){
		if(window.console){
			if(window.console.warn) window.console.warn(msg);
		}
	},
	name2id : function(name){
		var self = this;
		try{if(!Ext.isString(name)) name = name.toString();}catch(e){self.warn(e);name='';}
		return name.replace(self.getRegexpName2Id(),'-').toLowerCase();
	},
	makeId : function(){
		var self = this;
		var arr = [self.name2id(self.getAppName())];
		var i;
		for (i = 0; i < arguments.length; i++) {
			arr.push(self.name2id(arguments[i]));
		}
		return arr.join('-');
	},

	initStore : function(){
		var self = this;
		var options;
		try{options = Ext.query('select[name=db]>option');}catch(e){}
		if(Ext.isEmpty(options)) return;
		var datas = options.map(function(dom){
			var el = Ext.get(dom);
			var synonym = (el.getAttribute('synonym') || '');
			return {
				db : el.getValue(),
				fullname : el.getHTML(),
				synonym : Ext.isEmpty(synonym) ? [] : synonym.toLowerCase().split(';').map(function(val){ if(Ext.isString(val)){ return val.trim() }else{ return '' }}),
				disabled: el.getAttribute('disabled') ? true : false
			};
		});
		self._dblistStore = Ext.create('app.store.dblist', {
			storeId: self.makeId('store','dblist'),
			data : datas
		});
	},

	initUI : function(){
		var self = this;
		var db_element;
		try{db_element = Ext.get(Ext.query('select[name=db]')[0]);}catch(e){}
		if(Ext.isEmpty(db_element)) return;
		db_element.hide();
		var dblist_render_html = Ext.DomHelper.createDom({tag:'div',cls:'dblist-render'});
		var dblist_render = Ext.get(dblist_render_html).insertAfter(db_element);

		self._dblistComboBox = Ext.create('app.field.dblist', {
			id: self.makeId('ComboBox','dblist'),
			hiddenLabel: true,
			store: self.makeId('store','dblist'),
			value: db_element.getValue(),
			width: db_element.getWidth(),
			listConfig: {
				cls: 'dblist-boundlist',
				minWidth: db_element.getWidth()
			},
			renderTo: dblist_render,
			queryFilter: new Ext.util.Filter({
				filterFn: function(item) {
					var value = (this.value||'').toLowerCase();
					var idx = item.get('fullname').toLowerCase().indexOf(value);
					if(idx<0){
						Ext.each(item.get('synonym'),function(synonym){
							idx = synonym.indexOf(value);
							if(idx>=0) return false;
						});
					}
					return idx>=0;
				}
			})
		});
		if(self._dblistComboBox.queryFilter) self._dblistComboBox.store.addFilter(self._dblistComboBox.queryFilter, false);
		db_element.remove();
	},

	initApp: function() {
		var self = this;
		self.initStore();
		self.initUI();
	}
});
//Model
Ext.define('app.model.dblist',{
	extend: 'Ext.data.Model',
	fields: [
		{name: 'db',       type: 'string'},
		{name: 'source',   type: 'string'},
		{name: 'fullname', type: 'string'},
		{name: 'synonym',  type: 'auto'},
		{name: 'disabled', type: 'boolean', defaultValue: false},
		{name: 'hidden',   type: 'boolean', defaultValue: false}
	]
});
//Store
Ext.define('app.store.dblist',{
	extend: 'Ext.data.Store',
	model: 'app.model.dblist',
	proxy: {
		type: 'memory',
		reader: {
			type: 'json'
		}
	}
});
//form.field
Ext.define('app.field.dblist', {
	extend: 'Ext.form.field.ComboBox',
	alias: 'widget.appdblist',
	hiddenName: 'db',
	allowBlank: false,
	anyMatch: true,
	editable: true,
	hideLabel: true,
	selectOnFocus: true,
	queryMode: 'local',
	displayField: 'fullname',
	valueField: 'db',
	validator: function(v){
		return this.getStore().getCount() ? true : false;
	},
	onBeforeSelect: function(list, record) {
		var me = this;
		if(record.data.disabled) return false;
		return me.callParent(arguments);
	}
});

Ext.onReady(function(){
	app.initApp();
});
