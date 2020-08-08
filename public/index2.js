// https://insights.stackoverflow.com/survey/2018/#technology-most-loved-dreaded-and-wanted-languages
const sample = [
    {
      source: 'predicted',
      value: 78.9,
      color: "red"
    },
    {
      source: 'observed',
      value: 20.1,
      color: 'blue'
    },
  ];

  var svg;
  var chart;
  
  const margin = 50;
  const width = 120 - 2 * margin;
  const height = 150 - 10;
  var axisLeft;
  var xScale;
  var yScale;
function initalize(){

    var userAgent = navigator.userAgent.toLowerCase();
    console.log(userAgent)

svg=d3.select('svg');
chart = svg.append('g')
    .attr('transform', `translate(${margin}, 10)`);

  xScale = d3.scaleBand()
    .range([0, width])
    .domain(sample.map((s) => s.source))
  
  yScale = d3.scaleLinear()
    .range([height, 0])
    .domain([0, 100]);
    
   let y2Scale = d3.scaleLinear()
    .range([height, 0])
    .domain([0, 20]);

  // vertical grid lines
  // const makeXLines = () => d3.axisBottom()
  //   .scale(xScale)

  x= chart.append('g')
    .attr('transform', `translate(0, ${height})`)
    .call(d3.axisBottom(xScale).tickValues([]));

    axisLeft = d3.axisLeft(yScale)
  y1 =chart.append('g')
  .attr("class", "y axis")
    .call(axisLeft);
    
  y2 = chart.append('g')

    .attr("transform", "translate(" + width + " ,0)") 
    .call(d3.axisRight(y2Scale));
    
y2Scale = d3.scaleLinear()
    .range([height, 0])
    .domain([0, 10000]);
    
    

  // vertical grid lines
  // chart.append('g')
  //   .attr('class', 'grid')
  //   .attr('transform', `translate(0, ${height})`)
  //   .call(makeXLines()
  //     .tickSize(-height, 0, 0)
  //     .tickFormat('')
  //   )


  const barGroups = chart.selectAll()
    .data(sample)
    .enter()
    .append('g')

  barGroups
    .append('rect')
    .attr('class', 'bar')
    .attr('x', (g) => xScale(g.source))
    .attr('y', (g) => yScale(g.value))
    .attr('height', (g) => height - yScale(g.value))
    .attr('width', xScale.bandwidth())
    .attr('fill', (g) => g.color)
  

    svg
    .append('text')
    .attr('font-size', "11px")
    .attr('x', margin / 1.8)
    .attr('y', height + 10*2.6 )
    .attr('text-anchor', 'middle')
    .text('Predicted')

    svg
    .append('text')
    .attr('font-size', "11px")
    .attr('x', margin * 1.8)
    .attr('y', height + 10*2.6 )
    .attr('text-anchor', 'middle')
    .text('Observed')
    svg
    .append('text')
    .attr('id', 'change')
    .attr('font-size', "11px")
    .attr('x', -(height / 2)- 5)
    .attr('y', 10)
    .attr('transform', 'rotate(-90)')
    .attr('text-anchor', 'middle')
    .html('Point density')
    
   svg
    .append('text')
    .attr('font-size', "11px")
    .attr('x', -(height / 2) - 5)
    .attr('y', margin * 1.8 + width)
    .attr('transform', 'rotate(-90)')
    .attr('text-anchor', 'middle')
    .text('Point density in thousend')

}
function updateAxis(min, max ){
    console.log("upd")

    yScale = d3.scaleLinear()
    .range([height, 0])
    .domain([min, max]);

  axisLeft.scale(yScale)
  svg.select(".y")
  .call(axisLeft)
}

function updateText(text){
d3.select("#change")
  .html(text);
}

function redraw(data) {
     console.log(data)
   // Update…
       chart.selectAll("rect")
           .data(data)
           .transition()
           .attr('x', (g) => xScale(g.source))
           .attr('y', (g) => yScale(g.value))
           .attr('height', (g) => height - yScale(g.value))
           .attr('width', xScale.bandwidth())
   }
   


