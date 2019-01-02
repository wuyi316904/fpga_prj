
define_attribute {clk} syn_maxfan {1000000}
define_attribute {n:default_clock_driver.xlclockdriver_2.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_2.ce_vec*} max_fanout {"REDUCE"}
define_attribute {n:default_clock_driver.xlclockdriver_4.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_4.ce_vec*} max_fanout {"REDUCE"}

define_scope_collection ce_2_c10bed9e_group \
  {find -seq * -in [ expand -hier -from {n:ce_2_sg_x5} ]}
define_scope_collection ce_4_c10bed9e_group \
  {find -seq * -in [ expand -hier -from {n:ce_4_sg_x77} ]}

define_multicycle_path -from {$ce_2_c10bed9e_group} \
  -to {$ce_2_c10bed9e_group} 2
define_multicycle_path -from {$ce_4_c10bed9e_group} \
  -to {$ce_4_c10bed9e_group} 4

# Group-to-group constraints
define_multicycle_path -from {$ce_2_c10bed9e_group} \
  -to {$ce_4_c10bed9e_group} 2
define_multicycle_path -from {$ce_4_c10bed9e_group} \
  -to {$ce_2_c10bed9e_group} 2
