﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/DataViz.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="chart-wrapper">
    <%= Html.Kendo().Chart()
            .Name("chart")
            .Title("A digital signal")
            .Legend(false)
            .Series(series => {
                series.Area(new double[] { 20, 1, 18, 3, 15, 5, 10, 6, 9, 6, 10, 5, 13, 3, 16, 1, 19, 1, 20, 2, 18, 5, 12, 7, 10, 8 })
                      .Line(line => line.Style(ChartAreaStyle.Step));
            })
            .CategoryAxis(axis => axis
                .Title("time")
                .MajorGridLines(lines => lines.Visible(false))
                .MajorTicks(lines => lines.Visible(false))
            )
            .ValueAxis(axis => axis.Numeric()
                .Max(22)
                .Title("voltage")
                .MajorGridLines(lines => lines.Visible(false))
                .Visible(false)
            )
    %>
</div>
</asp:Content>
