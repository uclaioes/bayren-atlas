---
layout: page_
title: Tutorial
---

These tutorials describe how to use the maps, adjust visualizations, and compare data across geographies on the Profiles page.

## Mapping Options

### How do I change the data displayed on the map?

There are four map views you can interact with on this website: Map by Building Type, Building Size, Building Vintage, and Residential Income. Navigating to each map will allow you to change different variables.

Open the map of interest from:

1. The Bayren home page, select which of the four variables you would like to visualize
2. The Menu in the upper-right corner. Select or change maps in the top half of the menu.

### How can I customize the map?

For each map, use the drop-down options above the map to customize what you would like to see. The following four sections detail which variables are available for each map.

* NOTE: When you make a selection for type of energy consumption (*Electricity Consumption, Combined Consumption, and Natural Gas Consumption*) or geographical scale (*Census Tracts, Census Places, Zip Code Tabulation Areas, and Counties*), the website will *not* remember your selection as you move among maps.

#### **Map by Building Type**

![Screenshot of the Building Type map view set to show the total electricity consumption of buildings categorized as Single-Family by Counties for all months and all years.]({{ "/assets/images/tutorial/tutorial-bld-map-page.png" | relative_url }})

* The leftmost dropdown controls the geographical scale, including Census Tracts, Census Places, Zip Code Tabulation Areas, and Counties.
* The second dropdown menu allows for selection of the frequency distribution, by changing to Total, Median, Median per square foot, and Per Capita.
* The third denotes the energy type: Electricity Consumption (kWh), Combined Consumption (Btu), and Natural Gas Consumption (therms).
* The fourth menu displays the specific building category, which includes the following: Agricultural, Commercial, Industrial, Institutional, Multi-Family, Single-Family, Other, and Unspecified.The final two menus allow month and year selection. Any combination of months and years may be selected. 
* The final two columns allow month and year selection. Any combination of months and years may be selected.

    * NOTE: When multiple months and/or multiple years are selected for a statistical distribution (*Median, Median Per Sq. Ft., Per Capita*), the values displayed in the map and graphs will show the median of those values for the time periods selected. This happens because the statistical values are precomputed in the backend of the database. When *Total* is selected, the map and graphs will display the sum over the time periods selected.
  
#### **Map by Building Size**

![Screenshot of toolbar in Building Size map view set to show the total electricity consumption of buildings categorized as Single-Family and sized 1-10k sq. ft. by Counties for all months and all years.]({{ "/assets/images/tutorial/tutorial-sqft-map-page.png" | relative_url }})

* The leftmost dropdown controls the geographical scale, including Census Tracts, Census Places, Zip Code Tabulation Areas, and Counties.
* The second dropdown menu allows for selection of the frequency distribution, by changing to Total, Median, Median per square foot, and Per Capita.
The third column denotes the energy type: Electricity Consumption (kWh), Combined Consumption (Btu), and Natural Gas Consumption (therms).
* The fourth menu displays the specific building category, which includes the following: Agricultural, Commercial, Industrial, Institutional, Multi-Family, Other, and Unknown.
* The fifth dropdown allows you to select the building square footage: 0-10k sq. ft., 10k-20k sq. ft., 20k-30k sq. ft., 30k-40k sq. ft., 40k-50k sq. ft., Over 50k sq. ft., and Unknown
* The final two columns allow month and year selection. Any combination of months and years may be selected.
  
    * NOTE: When multiple months and/or multiple years are selected for a statistical distribution (*Median, Median Per Sq. Ft., Per Capita*), the values displayed in the map and graphs will show the median of those values for the time periods selected. This happens because the statistical values are precomputed in the backend of the database. When *Total* is selected, the map and graphs will display the sum over the time periods selected.
      
#### **Map by Building Vintage**

![Alt text: Screenshot of toolbar in Building Vintage map view set to show the total electricity consumption of buildings categorized as Single-Family and built 1978-1989 by Counties for all months and all years.]({{ "/assets/images/tutorial/tutorial-vint-map-page.png" | relative_url }})

* The leftmost dropdown controls the geographical scale, including Census Tracts, Census Places, Zip Code Tabulation Areas, and Counties.
* The second dropdown menu allows for selection of the frequency distribution, by changing to Total, Median, Median per square foot, and Per Capita.
* The third menu denotes the energy type: Electricity Consumption (kWh), Combined Consumption (Btu), and Natural Gas Consumption (therms).
* The fourth menu displays the specific building category, which includes the following: Agricultural, Commercial, Industrial, Institutional, Multi-Family, Single-Family, Other, and Unknown.
* The fifth dropdown allows you to select the time period in which buildings were built: Before 1949, 1950-1977, 1978-1989, After 1990, and Unknown.
* The final two columns allow month and year selection. Any combination of months and years may be selected.

    * NOTE:  When multiple months and/or multiple years are selected for a statistical distribution (*Median, Median Per Sq. Ft., Per Capita*), the values displayed in the map and graphs will show the median of those values for the time periods selected. This happens because the statistical values are precomputed in the backend of the database. When *Total* is selected, the map and graphs will display the sum over the time periods selected.

#### **Map by Residential Income**

![Screenshot of toolbar in Residential Income map view set to show the total electricity consumption of buildings categorized as Multi-Family representing 80-100% of the Median Family Income by Census Places for all months and all years.]({{ "/assets/images/tutorial/tutorial-ami-map-page.png" | relative_url }})

* The leftmost dropdown controls the geographical scale, including Census Tracts, Census Places, and Zip Code Tabulation Areas.
* The second dropdown menu allows for selection of the frequency distribution, by changing to Total, Median, Median per square foot, and Per Capita.
* The third column denotes the energy type: Electricity Consumption (kWh), Combined Consumption (Btu), and Natural Gas Consumption (therms).
* The fourth menu displays the specific building category, which includes the following: Multi-Family and Single-Family.
* The fifth column allows you to select the percentage range of the area median income: 0-30%, 30-50%, 50-80%, 80-100%, 100-120%, Over 120%, and Unknown.

    * NOTE: The tooltip that appears when hovering over the map geographies will indicate from which area the median income has been derived, as well as the median income of that area.

* The final two columns allow month and year selection. Any combination of months and years may be selected. 

    * NOTE: When multiple months and/or multiple years are selected for a statistical distribution (*Median, Median Per Sq. Ft., Per Capita*), the values displayed in the map and graphs will show the median of those values for the selected time periods. This happens because the statistical values are precomputed in the backend of the database. When *Total* is selected, the map and graphs will display the sum over the selected time periods.

## Using the Maps

### How do I control the visibility of map layers?

These layers may be toggled using the map controls available on the left side of the map.

![Screenshot of the Building Type map with the Layer Control menu open in the upper left side of the map area.]({{ "/assets/images/tutorial/tutorial-bld-layer-control.png" | relative_url }})

While all layers are technically available to toggle off and on, we recommend maintaining the visibility of the Consumption layer when multiple months and years of consumption data are available. Users will only get accurate information about consumption and masking for the entire time period when the Consumption layer remains visible.

![Screenshot of the Building Type map with the Layer Control menu open in the upper left side of the map area. Both DAC Census Tracts and Non-DAC Census Tracts layers are made visible. The Map is zoomed into a census tract in San Francisco County with the tooltip open, showing the name of the census tract as well as the CalEnviroscreen percentile score.]({{ "/assets/images/tutorial/tutorial-bld-dac-hover.png" | relative_url }})

Map layers of DAC and Non-DAC census tracts derived from CalEnviroscreen 4.0 are available as map overlays separately, to increase the flexibility of the layer control.

### How can I interact with the maps?

Each interactive map will have shared and unique variables available for adjustment at the top of the window. The options are described in the section *How can I customize the map?*

In addition to the filter selections available at the top of the map, there is a menu of extra map controls below the legend. When viewing the map, you can use the “Filter Census Tracts by County” dropdown to view the census tracts that lie within the county of interest, as well as the Census Places and Zip Code Tabulation areas that intersect the county of interest. When viewing Census Places, there is the additional option to filter based on whether or not the geography is incorporated or unincorporated.

Here the extra map controls reflect the options available with the County view:
![Screenshot of the Building Type map with a dotted blue outline around the Extra Map Controls available near the top right corner of the map page below the legend.]({{ "/assets/images/tutorial/tutorial-bld-map-page.png" | relative_url }})

Here the extra map controls include the Census Places filter available with the Census Places view:
![Screenshot of the Building Type map organized by census places with the Extra Map Controls available near the top right corner of the map page below the legend. The census places filter for incorporation status is visible.]({{ "/assets/images/tutorial/tutorial-bld-extra-map-controls.png" | relative_url }})

Below the filters is an option to show and hide map labels, which may be useful when examining consumption of the more granular geography levels.

The menu can be collapsed by clicking the “X” on the top left of the Extra Map Controls.

### How do I get a data summary and consumption breakdowns for specific regions?

You can get a data summary and see consumption data for a specific geography through any of the interactive maps or go straight to the Profiles page, located at the bottom of the main menu.

In an interactive map:

There are two ways to make selections on the map, which can be found in the map control panel on the left of the window.

![Screenshot of the Building Type Map with the map controls open, highlighting the pan function.]({{ "/assets/images/tutorial/tutorial-bld-pan.png" | relative_url }})

1. The default option is the “Pan” function, which allows you to move around the map and make selections by clicking on the geography of interest. To select multiple geographies at a time, hold the *Ctrl* button (Windows) or the *command* button (Mac) while clicking on the geographies of interest.

2. Use the “lasso” options, which allows you to click and drag to make a shape. All geographies within the shape will be selected.

You will see graphical monthly data and a data summary pop up for your selection(s) at the bottom of the screen.

* NOTE: While you can select as many geographies as you’d like, we suggest no more than 3 or 4. Depending on the size of your screen, results may be obscured with larger selections.

To make a new selection, simply click a new geography (without the *ctrl* or *command* button) or use a lasso selection tool. To clear a selection, either *Ctrl* (Windows) or *command* (Mac) and click the geography you want to unselect. Alternatively, to clear the entire selection, click anywhere on the map that is outside the included geographies.

* NOTE: If the data summary is available at the bottom of the screen, you have at least one geography selected. The website will maintain your selection when you navigate to the Profiles page via the View Profiles navigation button on the top left of the data summary.

#### **Time Series Graph**

For each selected geography, the graph in the bottom of the window will show the consumption for each selected month of each selected year. Below the graph, a data summary for the geographies will also be available.

![Screenshot of the Building Type map page with Sonoma County and Alameda County selected along with the population of the bar graphs and summaries below the map.]({{ "/assets/images/tutorial/tutorial-bld-selection.png" | relative_url }})

With geographies selected, there is an option to compare or aggregate the data in the graph through a dropdown available at the bottom of the map. When comparing geographies, the graphs will sit side-by-side. 

![Screenshot of the Building Type map page with Sonoma County and Alameda County selected with the compare or aggregate dropdown open.]({{ "/assets/images/tutorial/tutorial-bld-aggregate.png" | relative_url }})

When aggregating, a single graph will display while maintaining separate data summaries for each selected geography below the graph.

![Screenshot of the Building Type map page with Sonoma County and Alameda County selected with the aggregate option open. A tooltip for 2017 for all selected geographies is populated.]({{ "/assets/images/tutorial/tutorial-bld-aggregate-tooltip.png" | relative_url }})

#### **How do I interpret masking in the graph?**

When aggregating geographies in instances where masking is present, the aggregated graph will maintain a masking flag, to highlight that the aggregation is incomplete due to the presence of masking in at least one of the geographies.

As an example, below is the Building Type map with Sonoma County and Alameda County selected in the comparison state. With Industrial use type selected, masking is present (indicated by a gray “x”) across multiple months of the Alameda County data.

![Screenshot of the Building Type map page with Sonoma County and Alameda County selected in the comparison state with the bar graphs and summaries below the map. The graphs are showing consumption for Industrial building types, which contains masking in the Alameda County portion of the graph.]({{ "/assets/images/tutorial/tutorial-bld-compare-masked.png" | relative_url }})

When the aggregate option is selected, the masking indicator will remain present below the graph for the months in which Alameda consumption was masked in the comparison state.

![Screenshot of the Building Type map page with Sonoma County and Alameda County selected in the aggregation state with the bar graphs and summaries below the map. The graphs are showing consumption for Industrial building types, which contains masking in the Alameda County portion of the graph.]({{ "/assets/images/tutorial/tutorial-bld-aggregate-masked.png" | relative_url }})

* NOTE: When viewing consumption as a statistic (*median, median per sq. ft., per capita*) in the aggregation state for multiple geographies, the graph values will display the median of the monthly statistical value (i.e. median of monthly per capita values). This happens because the statistical values are precomputed in the backend of the database.

#### **How do I make selections in the graph?**

![Screenshot of the Building Type map page with Sonoma County and Alameda County selected along with the population of the bar graphs and summaries below the map. A tooltip for 2019 of Alameda County is populated.]({{ "/assets/images/tutorial/tutorial-bld-graph-hover.png" | relative_url }})

When hovering over the year value in the x-axis of the graph, the aggregate consumption value for the entire year will display in the tooltip.

![Screenshot of the Building Type map page with Sonoma County and Alameda County selected along with the population of the bar graphs and summaries below the map. A selection of the first half of 2019 in the monthly bar graph selected and an updated tooltip, which reflects the selection.]({{ "/assets/images/tutorial/tutorial-bld-graph-selection.png" | relative_url }})

To aggregate specific months and years of interest for the tooltip, you can:

1. Click and drag to create a rectangle selection of the months of interest in the bar chart
2. *Ctrl* (Windows) or *command* (Mac) and click individual months of interest

The selection will filter to only the selected years and update the aggregation displayed in the yearly tooltip along the x-axis of the graph. When viewing the graphs in the comparison state, if the selection is made for the graph of a particular selected geography, the dates selected will filter and update for each geography represented in the graphs.

To clear the selection, click on any white space within the graph window or begin a new selection.

### How do I enter the Profiles page through the map?

With at least one geography selected, a “View Profile” or “View Profiles” button will appear in the top left of the data summary window, which will take you to the Profiles page with your geographies selected. 

![Screenshot of the very top of the Profiles page, showing the filter selection bar, the map, and the data summaries of the selected geographies. The Back to Building Type Map button is highlighted with a tooltip.]({{ "/assets/images/tutorial/tutorial-profiles-page-return.png" | relative_url }})

When you have navigated to the Profiles page directly from a map page, there will be a highlighted button in the left-hand block of blue-highlighted text that will allow you to return to the map page. More information on the Profiles page is available in the Profiles section.

## Profiles

### How do I compare profiles?

If you have selected a geography from a map, and navigate to the Profiles page via the View Profiles button, all the available visualizations and data summaries in the Profiles page will be populated with the selection.

You can also navigate to the Profiles page independently of the map, by using the Menu in the upper-right corner of the window. When you enter the Profiles page without a map selection, the graphs will be unpopulated until a selection is made in the map or the top filters.

![Screenshot of the very top of the Profiles page, showing the filter selection bar, the map, and the data summaries of the selected geographies.]({{ "/assets/images/tutorial/tutorial-profiles-page.png" | relative_url }})

* The leftmost dropdown filters the geographical scale, including Census Tracts, Census Places, Zip Code Tabulation Areas, and Counties.
* The second menu allows you to filter the map and geography list to a specific county of interest.
* The third option allows you to choose specific geographies to compare. This dropdown will update depending on the selected geographic level as well as the county filter. 
* Next, you can choose whether to compare or aggregate the data for the selected geographies.

    * NOTE: The data summary and renter/owner graphs will not change with this option. All other visualizations in the Profiles page will adjust based on the aggregate/compare option.

* The next column denotes the energy type: Electricity Consumption (kWh), Combined Consumption (Btu), and Natural Gas Consumption (therms).
* The following two columns allow month and year selection. Any combination of months and years may be selected. 

    * NOTE: When multiple months and/or multiple years are selected for a statistical distribution (Median, Median Per Sq. Ft., Per Capita), the values displayed in the map and graphs will show the median of those values for the time periods selected. When Total is selected, the map and graphs will display the sum over the time periods selected. This happens because the statistical values are precomputed in the backend of the database.

* Finally, you can choose to view the Profiles page data visualizations as bar graphs or as tables. 

    * NOTE: While you can select as many geographies as you’d like, when comparing data, we suggest no more than 3 or 4. Depending on the size of your screen, results may be obscured with larger selections.

### How do I interact with the visualizations?

Each visualization will have an info button which, upon hover, will provide a description of that visualization. 

For several of the visualizations, there is an additional option to choose how to view the data. For instance, in the Building Vintage section, the graphs or the tables can be organized by Vintage:

![Screenshot of the Building Vintages section of the Profiles page, with the Monthly Total Electricity Consumption graph organized and colored by Vintage bracket.]({{ "/assets/images/tutorial/tutorial-profiles-vintage-color.png" | relative_url }})

Or by both Vintage and Usetype:

![Screenshot of the Building Vintages section of the Profiles page, with the Monthly Total Electricity Consumption graph organized by Vintage bracket and colored by usetype.]({{ "/assets/images/tutorial/tutorial-profiles-usetype-color.png" | relative_url }})

### How do I interpret masked data on the Profiles page?

When an “x” appears in a graph or table, that is an indication that masked data is present. 

![Screenshot of the first Building Types graph available on the Profiles page with a masked indicator highlighted in the tooltip.]({{ "/assets/images/tutorial/tutorial-profile-masked.png" | relative_url }})

When examining the graphs of Building Vintage, Building Size, Residential Income, and CalEnviroscreen scores, a masking indicator may be present, but will not specify in which use type category the masking may occur. 

![Screenshot of the Building Vintages section of the Profiles page, with the Monthly Total Electricity Consumption graph organized and colored by Vintage bracket.]({{ "/assets/images/tutorial/tutorial-profile-masked-agg.png" | relative_url }})

To get the most detailed information on the origin of masking, choose to compare geographies if more than one is selected, view the profiles page as tables, and choose to organize by both the relevant category as well as the use type.

![Screenshot of the Building Vintages section of the Profiles page, with the Monthly Total Electricity Consumption graph organized and colored by Vintage bracket.]({{ "/assets/images/tutorial/tutorial-profile-masked-agg-table.png" | relative_url }})

### How do I access CalEnviroscreen scores along with the consumption data?

There are two ways in which CalEnviroscreen 4.0 data are incorporated into the atlas.

1. The first is via the map pages. By default, the CalEnviroscreen 4.0 map layers are hidden. By opening the Layer Control menu in the map menu near the top left of the map area, the option to show DAC geographies (DAC Census Tracts) and Non-DAC (Non-DAC Census Tracts) will become available. These layers are meant for context. Turning them on will prioritize their tooltips on hover.

   See *How do I control the visibility of map layers* for more details.

2. The second is through the Profiles page. The final two graphs of the Profile page provide data on consumption and population per CalEnviroscreen 4.0 score quartiles.

    * NOTE: The population graph is not currently available pending a data processing update.

Because Census Places and Zip Code Tabulation Areas do not necessarily align with Census Tracts, these graphs will only populate when viewing Census Tracts or Counties.

## Downloading data

### How do I download the data?

For data specific to a current view, users can use the download options available in the upper right-hand corner of the Profiles page.

* NOTE: When downloading a specific view to the Crosstab format directly from the Profiles page, the file will download consistent with the underlying construction of the atlas visualizations. That means the format of the file may require further organization by the user in order to remove elements necessary for the visualizations and perhaps unnecessary for use in a spreadsheet.

![Screenshot of the crosstab button, which is a table icon.]({{ "/assets/images/tutorial/tutorial-download-crosstab.png" | relative_url }}){: .img-icon}

* Crosstab: Opens a dialog window to select download options. If viewing a dashboard, select a sheet from the dashboard to download. Under Select Format, select .csv or Microsoft Excel .xlsx.

  For dashboards, all sheets will be listed, including hidden sheets. Any filters, parameters, or selections currently applied in Tableau are reflected in the downloaded crosstab.

![Screenshot of the PDF button, which is a PDF icon.]({{ "/assets/images/tutorial/tutorial-download-pdf.png" | relative_url }}){: .img-icon}

* PDF: Opens a dialog window to select download options. Under Include, select the part of the workbook you want to download. Select this view, specific sheets from a workbook or dashboard, or select all. Select Scaling to control the image's appearance on the PDF. Select Paper Size and Orientation.

  If you're downloading a dashboard to PDF format, web page objects aren't included.

![Screenshot of the crosstab button, which is an image icon.]({{ "/assets/images/tutorial/tutorial-download-image.png" | relative_url }}){: .img-icon}

*  Image: Downloads an image of the view in .png format. Any filters, parameters, or selections currently applied in Tableau are reflected in the downloaded image.

![Screenshot of the crosstab button, which is a powerpoint icon.]({{ "/assets/images/tutorial/tutorial-download-powerpoint.png" | relative_url }}){: .img-icon}

* PowerPoint: Download selected sheets as images on individual slides in a PowerPoint presentation.

  To produce individual images, rather than an image of the entire page, select *Specific sheets from this dashboard*.

  Any filters, parameters, or selections currently applied in Tableau are reflected in the exported presentation. The generated PowerPoint file includes a title slide with the name of your workbook and the date the file was generated. The title is a hyperlink that opens the workbook in Tableau Cloud or Tableau Server.

<style>
  .img-icon {
    height: 30px;
  }
</style>
