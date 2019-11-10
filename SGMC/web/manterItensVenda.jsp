<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Itens Venda - ${operacao}</h1>
        <form action="ManterItensVendaController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterItensVenda">
            <table>
                <tr>
                    <td>
                        <label> ID: </label>
                        <input type="text" name="numIdItensVenda" value="${itensVenda.idItensVenda}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>>
                    </td>
                    <td>
                        <label> ID Venda: </label>
                        <select name="optVenda" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="0" <c:if test="${itensVenda.venda.idVenda == null}">selected</c:if></option>
                            <c:forEach items="${vendas}" var="venda">
                                <option value="${venda.idVenda}" <c:if test="${itensVenda.venda.idVenda == venda.idVenda}">selected</c:if>>${venda.idVenda}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <br>
                <tr>
                    <td>
                        <label> Produto: </label>
                        <select name="optProduto" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="0" <c:if test="${itensVenda.produto.idProduto == null}">selected</c:if></option>
                            <c:forEach items="${produtos}" var="produto">
                                <option value="${produto.idProduto}" <c:if test="${itensVenda.produto.idProduto == produto.idProduto}">selected</c:if>>${produto.nome}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <label> Quantidade: </label>
                        <input type="number" name="numQuantidade" value="${itensVenda.quantidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                    <td>
                        <label> Preço Unitário: </label>
                        <input type="text" name="numPrecoUnitario" value="${itensVenda.precoUnitario}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="btnConfirmar" value="${operacao}">
                </td>
                </tr>
            </table>
        </form>
                <table><tr><td><input type="submit" name="btnVoltar" value="Voltar" onclick="window.location.href='PesquisaItensVendaController'"></td></tr></table>
    </body>
</html>