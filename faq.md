---
layout: page_
title: FAQ
---

## How can data from the Energy Atlas be used?

We believe that energy data should be more transparent and used to create data-driven policy for climate and energy planning. Here are a few examples of how Atlas data can be used by stakeholders:

* to help target energy efficiency programs to appropriate buildings in areas with the most need.
* to inform energy policy based on ground-up data.
* to inform regional and municipal climate action planning.
* to better understand local patterns of building energy consumption and identify strategies for reduction.

## How can I download Atlas data?

The complete aggregated data is available to download in CSV format on the Data Download page. In addition, users can download data specific to a certain view using the data download options available on the Profiles page.
For more details, visit the Tutorial.

* NOTE: When downloading a specific view to the Crosstab format directly from the Profiles page, the file will download consistent with the underlying construction of the atlas visualizations. That means the format of the file may require further organization by the user in order to remove elements necessary for the visualizations and perhaps unnecessary for use in a spreadsheet.

## Can I compute aggregated consumption values across multiple geographies?

User-aggregated consumption values are available in the map and Profiles page when more than one geography is selected and the “aggregate” option is chosen. 

When viewing "total" consumption, the aggregate option will sum the available data. To prevent back-calculation, however, if a geography has been masked for a certain month and it is aggregated with another geography, the sum for that particular month will not include the masked data.

When the "aggregate" option is selected for a statistical distribution (Median, Median Per Sq. Ft., Per Capita), the values displayed in the visualizations will show the monthly *median* of the available values. This happens because the statistical values are precomputed in the confidential backend of the database. In other words, except for the case of the "total" metric, user-level aggregations do not involve new computations of the underlying data.

These measures are employed in an abundance of caution to ensure adherence to the 15/15 Rule and provide more detailed aggregations of energy by use type, year built, and other important attributes to individual geographies available in the Atlas. When an aggregation includes an instance of masked data, it will be marked with an “x” to indicate that it does not include all possible consumption.

Data privacy masking rules, as currently written, create conflicting masking limitations based on sector and the location of high consuming customers. In a majority of cases, nonresidential (especially industrial) consumption is masked due to violating the 15/15 Rule. If a combined total is included, the smaller sub-use types are more highly masked to prevent the possibility of reverse calculating a masked value. To ensure that no individual use type can ever be reverse calculated from the total, additional masking of more sub-use types would be necessary.

## Can I access the underlying data behind the Atlas?

The short answer is no. Users currently only have access to the pre-aggregated data. The underlying energy data is confidential to protect customer privacy, and was shared with UCLA researchers through a Non-Disclosure Agreement.

## Why is some data masked (and what does that mean)?

In California, individual energy (electricity and natural gas) account information is protected as private information. To ensure the confidentiality of each individual customer's consumption information, CCSC masks data that does not meet minimum aggregation thresholds. For nonresidential consumption, aggregated data must include a minimum of 15 customers with no single account’s consumption exceeding 15 percent of the group’s total energy use. For residential consumption, there must be at least 100 customers. If these conditions are not met, the aggregated consumption in a geography will be masked for privacy on the website. For more information about these privacy regulations, please visit the Methods page and the CPUC's decision (D.14-05-016).

## Some of the data is different than I would expect. Could it be wrong?

CCSC researchers continue to conduct extensive review of both the data and findings that appear on the Energy Atlas. Despite this caution, mistakes can happen or errors/omissions may be present in the underlying data. Please read through the "Limitations" section of the methods carefully. If you see something questionable, please do not hesitate to contact us, we are always grateful for feedback from users.
