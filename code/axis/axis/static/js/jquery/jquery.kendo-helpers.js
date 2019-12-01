(function ($) {

    $.kendoHelper = {
        uploadLocalization: {
            select: "Seleccionar...",
            dropFilesHere: "Soltar aquí...",
            cancel: "Cancelar",
            headerStatusUploaded: "Carga completada",
            headerStatusUploading: "Cargando archivos",
            remove: "Quitar archivo",
            retry: "Intentar nuevamente",
            statusFailed: "Carga incompleta",
            statusUploaded: "Carga completada",
            statusUploading: "Cargando archivos",
            uploadSelectedFiles: "Cargar archivos seleccionados"
        },
        gridFilterableMessages : {
            and: "y",
            or: "o",
            filter: "Filtrar",
            clear: "Quitar filtro",
            info: "Filtrar por: "
        },
        gridFilterableStrOperators : {
            startswith: "Comienza",
            eq: "Igual",
            neq: "Distinto",
            contains: "Contiene"
        },
        gridFilterableDateTimeOperators :  {
             eq: "Igual",
             neq: "Distinto",
             gte: "Despues o igual a",
             gt: "Despues de",
             lte: "Antes o igual a",
             lt: "Antes de"
        },
        gridPageableMessages: {
            display: "{0} de {2} items", //{0} is the index of the first record on the page, {1} - index of the last record on the page, {2} is the total amount of records
            empty: "No existen items disponibles",
            page: "Página",
            of: "de {0}", //{0} is total amount of pages
            itemsPerPage: "Items por página",
            first: "Primera página",
            previous: "Página anterior",
            next: "Próxima página",
            last: "Última página",
            refresh: "Actualizar"
        },
        gridGroupableMessages: { empty: "Arrastre encabezados de columnas aquí para agrupar" },
        pagerMessages:  {
                display: "{0}-{1} de {2} imágenes",
                empty: "No seleccionó ninguna imágen",
                of: "de {0}",
                itemsPerPage: "imágenes por página",
                first: "Primera página",
                previous: "Anterior",
                next: "Siguiente",
                last: "Última página"
            },
        getConfirmationWindow: function (cfg) {
            var block = '<div style="padding-top: 10px; padding-bottom: 10px;text-align: center;">' +
                '<div id="confirmation-msg">' + cfg.msg + '<\/div>' +
                '<div style="border-color: #C5C5C5; border-style: solid; border-top-width: 1px;border-bottom-width: 0;' +
                'border-left-width: 0;border-right-width: 0;padding-top: 8px;">' +
                '<div id="cancel-btn" style="float:right;" class="k-button k-grid-edit" title="Editar registro">' +
                '<span class="k-icon k-cancel"><\/span>Cancelar' +
                '<\/div>' +
                '<div id="ok-btn" style="float:right;margin-right: 10px;" class="k-button k-grid-edit">' +
                '<span class="k-icon k-update"><\/span>Aceptar' +
                '<\/div>' +
                '<div class="float-separator"><\/div>' +
                '<\/div>';
            var window = $(block).kendoWindow({
                modal:true,
                title:cfg.title,
                actions: {},
                resizable:false,
                visible:false
            }).data("kendoWindow");
            $(window.element).find("#ok-btn").click(function (){
                cfg.onConfirm();
                window.close();
            });
            $(window.element).find("#cancel-btn").on("click", function (){
                window.close();
            });
            return window;
        },
        getDateTimeRangePickers: function(startId, endId){
            function rangeStartChange(e){
                var startDate = rangeStartPicker.value();
                var endDate = rangeEndPicker.value();
                if (startDate) {
                    startDate = new Date(startDate);
                    startDate.setDate(startDate.getDate());
                    rangeEndPicker.min(startDate);
                }
                else if (endDate) {
                    rangeStartPicker.max(new Date(endDate));
                }
                else {
                    endDate = new Date();
                    rangeStartPicker.max(endDate);
                    rangeEndPicker.min(endDate);
                }
            }
            var rangeStartPicker = $("#" + startId).kendoDateTimePicker({
                parseFormats: ["MM/dd/yyyy"],
                change: rangeStartChange
            }).data("kendoDateTimePicker");

            function rangeEndChange(e){
                var startDate = rangeStartPicker.value();
                var endDate = rangeEndPicker.value();
                if (endDate) {
                    endDate = new Date(endDate);
                    endDate.setDate(endDate.getDate());
                    rangeStartPicker.max(endDate);
                }
                else if (startDate) {
                    rangeEndPicker.min(new Date(startDate));
                }
                else {
                    endDate = new Date();
                    rangeStartPicker.max(endDate);
                    rangeEndPicker.min(endDate);
                }
            }
            var rangeEndPicker = $("#" + endId).kendoDateTimePicker({
                parseFormats: ["MM/dd/yyyy"],
                change: rangeEndChange
            }).data("kendoDateTimePicker");

            return { startPicker: rangeStartPicker, endPicker: rangeEndPicker };
        }
    };
})(jQuery);