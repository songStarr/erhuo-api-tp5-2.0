webpackJsonp([1],{181:function(t,e,n){"use strict";var r=n(213),o=n(214),i=function(t,e,n){return e("Button",{props:{type:n.row.is_fans?"warning":"primary",size:"small"},style:{marginRight:"3px",width:"64px"},on:{click:function(){t.follow(n)}}},n.row.is_fans?"取消关注":"关注TA")},a=function(t,e,n){return e("Button",{props:{type:"error",size:"small"},on:{click:function(){t.see(n)}}},"查看TA")};e.a={components:{myTable:o.a},data:function(){return{data:[],followersColumns:r.a,loading:!1,page:1,num:10,total:0}},computed:{uid:function(){if(this.$store.state.user.info)return this.$store.state.user.info.user_id},type:function(){return this.$route.meta.type},user_id:function(){return this.$route.params.uid?this.$route.params.uid:this.uid}},created:function(){this.init()},mounted:function(){this.get_followers()},watch:{$route:function(){this.get_followers()},page:function(){this.get_followers()}},methods:{init:function(){var t=this;this.followersColumns.forEach(function(e){e.handle&&(e.render=function(n,r){var o=[];return e.handle.forEach(function(e){"follow"===e?o.push(i(t,n,r)):"see"===e&&o.push(a(t,n,r))}),n("div",o)})})},setPage:function(t){this.page=t},get_followers:function(){var t=this;this.loading=!0,this.$fetch.user.get_followers({user_id:this.user_id,type:this.type,page:this.page,num:this.num}).then(function(e){t.loading=!1,200===e.code?(t.data=e.data,t.total=e.total):t.$Message.error(e.msg)})},follow:function(t){var e=this;this.$fetch.user.follow({type:this.type,followers_id:t.row.user_id}).then(function(n){200===n.code?e.data[t.index].is_fans=n.data:e.$Message.error(n.msg)})},see:function(t){console.log(t.row),this.$router.push({name:"sell",params:{uid:t.row.user_id}})}}}},182:function(t,e,n){"use strict";e.a={props:["columns","data","loading","total","pageSize","page","num"],data:function(){return{}},methods:{changePage:function(t){this.$emit("setPage",t)}}}},213:function(t,e,n){"use strict";n.d(e,"a",function(){return o});var r=n(4),o=[{title:"昵称",render:function(t,e){return t("div",[t("Avatar",{props:{src:e.row.user_icon}}),t("strong","    "+e.row.user_name)])}},{title:"性别",align:"center",filters:[{label:"男",value:1},{label:"女",value:2}],filterMultiple:!1,filterMethod:function(t,e){return 1===t?"male"===e.user_sex:2===t?"female"===e.user_sex:void 0},render:function(t,e){return t("div","male"===e.row.user_sex?"男":"女")}},{title:"学校",align:"center",render:function(t,e){return t("div",r.a.formatSchool(e.row.user_sid))}},{title:"操作",align:"center",handle:["follow","see"]}]},214:function(t,e,n){"use strict";var r=n(182),o=n(215),i=n(0),a=i(r.a,o.a,!1,null,null,null);a.options.__file="src\\views\\table\\my_table.vue",e.a=a.exports},215:function(t,e,n){"use strict";var r=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("Table",{staticStyle:{margin:"30px 0 15px"},attrs:{border:"",columns:t.columns,loading:t.loading,data:t.data}}),t._v(" "),n("Row",{attrs:{type:"flex",justify:"end"}},[n("Page",{attrs:{total:t.total,"show-total":"","show-elevator":"",size:t.pageSize,current:t.page,"page-size":t.num},on:{"on-change":t.changePage}})],1)],1)},o=[];r._withStripped=!0;var i={render:r,staticRenderFns:o};e.a=i},216:function(t,e,n){"use strict";var r=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("my-table",{attrs:{data:t.data,columns:t.followersColumns,loading:t.loading,total:t.total,num:t.num,page:t.page,pageSize:"small"},on:{setPage:t.setPage}})],1)},o=[];r._withStripped=!0;var i={render:r,staticRenderFns:o};e.a=i},8:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var r=n(181),o=n(216),i=n(0),a=i(r.a,o.a,!1,null,null,null);a.options.__file="src\\views\\user\\fans.vue",e.default=a.exports}});