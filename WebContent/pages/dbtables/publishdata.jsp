<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="app.service.TextTranslator, java.util.Locale"%>
<%
  Locale locale = request.getLocale();
  TextTranslator svc = new TextTranslator(locale.getLanguage());
  %>
<!DOCTYPE html>
<html>
  <head>
    <%@ include file="/parts/html-head.jsp" %>
    <link rel="stylesheet" type="text/css" href="/pages/dbtables/css/datatable-style.css" />
    <title>Published Data</title>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  </head>
  <body>
    <%@ include file="/parts/header.jsp"%>
    <div id="publish-data" class="container mt-5 invisible">
      <table id="publish-datatable" class="display" style="width: 100%">
        <thead>
          <tr>
            <th>Message Id</th>
            <th>Message</th>
            <th>Topic</th>
            <th>Publish Time</th>
            <th>Global Txn Id</th>
          </tr>
        </thead>
      </table>
    </div>
    <div id="loading-div" class="invisible">
      <i id="loading" class="fa fa-refresh fa-spin"
        style="margin-left: calc(50% - 75px); font-size: 150px"></i>
    </div>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script
      src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script
      src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/g/mark.js(jquery.mark.min.js)"></script>
    <script
      src="https://cdn.datatables.net/plug-ins/1.10.13/features/mark.js/datatables.mark.js"></script>
    <script src="./js/publishdata.js"></script>
  </body>
</html>