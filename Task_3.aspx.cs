using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_01
{
    public partial class Task_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double num1, num2, result = 0;
            string operation = ddlOperation.SelectedValue;

            if (double.TryParse(txtFirstNumber.Text, out num1) && double.TryParse(txtSecondNumber.Text, out num2))
            {
                switch (operation)
                {
                    case "+":
                        result = num1 + num2;
                        break;
                    case "-":
                        result = num1 - num2;
                        break;
                    case "*":
                        result = num1 * num2;
                        break;
                    case "/":
                        if (num2 != 0)
                        {
                            result = num1 / num2;
                        }
                        else
                        {
                            lblResult.Text = "Division by zero is not allowed.";
                            return;
                        }
                        break;
                    default:
                        lblResult.Text = "Invalid operation.";
                        return;
                }

                lblResult.Text = "Result: " + result.ToString();
            }
            else
            {
                lblResult.Text = "Invalid input. Please enter valid numbers.";
            }
        }
    }
}