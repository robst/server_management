$('.container-fluid > div:last-child').html '<%=render partial: 'results', locals:{  results: search.search_results } %>'
