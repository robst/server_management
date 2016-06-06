$('#content').html '<%=render partial: 'results', 
                                            locals:{  
                                              results: search.search_results 
                                            } %>'
