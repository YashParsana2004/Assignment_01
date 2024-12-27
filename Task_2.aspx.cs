using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_01
{
    public partial class Task_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblUnit_SelectedIndexChanged(object sender, EventArgs e)
        {
            double temperature = 0;
            string unit = rblUnit.SelectedValue;
            string convertedUnit = (unit == "F") ? "C" : "F";

            if (double.TryParse(txtTemperature.Text, out temperature))
            {
                double convertedValue = ConvertTemperature(temperature, unit);
                lblValue.Text = convertedValue.ToString("F2"); // Format to 2 decimal places
                lblConverted.Text = "Converted Temperature (" + convertedUnit + "):";
            }
            else
            {
                lblValue.Text = "Invalid temperature";
                lblConverted.Text = "";
            }
        }

        private double ConvertTemperature(double temperature, string unit)
        {
            if (unit == "F")
            {
                return (temperature - 32) * 5 / 9;
            }
            else
            {
                return (temperature * 9 / 5) + 32;
            }
        }
    }
    }