<%-- 
    Document   : rGeneral
    Created on : 30/07/2025, 11:21:09 AM
    Author     : anton
--%>



<jsp:include page="includes/header.jsp"/>


<div class="container">
    <div class="container">
        <div class="order-details">
            <div class="row"><!--inicia fila 1 -->
                <center>
                    <form method="post" action="rUsuario1.jsp">
                        <center>
                            <h3>ALTA USUARIO</h3>
                            <img src="./img//icon/inisesionalum2.jpg"/>
                            <div col-sm-6>
                                <label>NOMBRE</label>
                                <input class="input" type="text" placeholder="nombre" required name="nombre"/>
                                
                                <label>PUESTO</label>
                                <input class="input" type="text" placeholder="puesto" required name="puesto"/>
                                
                                <label>DIAS TRABAJADOS</label>
                                <input class="input" type="text" placeholder="dias_tra" required name="dias_tra"/>
                                
                                <label>SUELDO X DIA</label>
                                <input class="input" type="text" placeholder="sueldo_dias" required name="sueldo_dias"/>
                                
                                <br><br>
                                <input type="submit" class="primary-btn order-submit" value="Registrame"/>
                                
                            </div>
                        </center>
                    </form>
                </center>
        </div><!--termina fila 1 -->
    </div>
</div>


<jsp:include page="includes/footer.jsp"/>






