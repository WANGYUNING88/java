<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>  
    <head>  
        <meta charset="UTF-8">  
        <title></title>  
        <script src="../js/angular.min.js"></script>  
        <style>  
        </style>  
        <script>  
            var app=angular.module("myapp",[]);  
            app.controller("demoC",["$scope",function($scope)  
            {  
                $scope.ShoppingCar=[{Title:"红苹果",Count:1,UnitPrice:2.5},{Title:"绿苹果",Count:1,UnitPrice:2}];  
                //定义函数  
                $scope.sumprice=function(){  
                    var sum=0;        
                    for(var i=0;i<$scope.ShoppingCar.length;i++){  
                        sum+= $scope.ShoppingCar[i].Count*$scope.ShoppingCar[i].UnitPrice;  
                    }  
                    return sum;  
                      
                }                 
                //添加或者减少商品数量  
                $scope.updatenum=function(index,num){  
                    $scope.ShoppingCar[index].Count=$scope.ShoppingCar[index].Count+num;  
                    if($scope.ShoppingCar[index].Count<=0){  
                        $scope.ShoppingCar.splice(index,1);  
                    }  
                }  
            }  
            ]  
            )  
        </script>  
    </head>  
    <body ng-app="myapp" ng-controller="demoC">  
        <table border="1px solid">  
                <tr>  
                    <td>标题</td>  
                    <td>单价</td>  
                    <td>数量</td>  
                    <td>小计</td>  
                    <td>删除</td>  
                </tr>  
            <tr ng-repeat="good  in ShoppingCar">  
                <td>{{good.Title}}</td>  
                <td>{{good.UnitPrice}}</td>  
                <td> <input ng-model="good.Count" style="width: 25px;" />   
                    <button onclick="add()">+</button>  
                    <button onclick="subtract()">-</button>  
                  
                </td>  
                <td> {{good.UnitPrice*good.Count}} </td>  
            </tr>  
              
              
           </table>  
            总价:{{sumprice()}}   
         
    </body>  
</html> 