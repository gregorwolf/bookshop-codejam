module.exports = srv => {

  console.log('Service name:', srv.name)

  srv.after('READ','Books', (each)=>{
    if( each.stock > 500) {
      each.title = '(5% off!) ' + each.title
    }
  })

}