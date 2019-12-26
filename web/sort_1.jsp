<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8"><link rel="icon" href="https://jscdn.com.cn/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            #datatable {
    border: 1px solid #ccc;
    border-collapse: collapse;
    border-spacing: 0;
    font-size: 12px;
}
td,th {
    border: 1px solid #ccc;
    padding: 4px 20px;
}
        </style>
        <script src="js/newjavascript.js"></script>
        <script src="js/js2.js"></script>
        <script src="js/js3.js"></script>
        <script src="js/js4.js"></script>
    </head>
    <body>
        <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
        <p></p>
        <table id="datatable">
            <thead>
                <tr>
                    <th></th>
                    <th>department</th> 
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>gynecology</th>
                    <td>20</td> 
                </tr>
                <tr>
                    <th>ophthalmology department </th>
                    <td>19</td>
                </tr>
                <tr>
                    <th>department of surgery</th>
                    <td>18</td>
                </tr>
                
                <tr>
                    <th>dermatology department </th>
                    <td>6</td> 
                </tr>
               
                
               
                
                
               
                
         
            </tbody>
        </table>
        <script>
           var chart = Highcharts.chart('container', {
    data: {
        table: 'datatable'
    },
    chart: {
        type: 'pie'
    },
    title: {
        text: 'department'
      
    },
    yAxis: {
        allowDecimals: false,
        title: {
            text: '',
            rotation: 0
        }
    },
    /*tooltip: {
        formatter: function () {
            return '<b>' + this.series.name + '</b><br/>' +
                this.point.y + ' ?' + this.point.name.toLowerCase();
        }
    }*/
});
        </script>
    </body>
</html>