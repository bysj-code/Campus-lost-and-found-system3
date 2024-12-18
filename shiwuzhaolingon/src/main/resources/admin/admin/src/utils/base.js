const base = {
    get() {
        return {
            url : "http://localhost:8080/shiwuzhaolingon/",
            name: "shiwuzhaolingon",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/shiwuzhaolingon/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校园失物招领系统"
        } 
    }
}
export default base
