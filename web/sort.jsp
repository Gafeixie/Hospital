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
                    <th>The best doctor</th> 
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Tom</th>
                    <td>24</td> 
                </tr>
                <tr>
                    <th>Tony</th>
                    <td>2</td>
                </tr>
                <tr>
                    <th>hzx</th>
                    <td>8</td>
                </tr>
                <tr>
                    <th>lzy</th>
                    <td>3</td>
                </tr>
                <tr>
                    <th>xph</th>
                    <td>6</td> 
                </tr>
                <tr>
                    <th>xjh</th>
                    <td>1</td> 
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
        text: 'The best doctor'
      
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