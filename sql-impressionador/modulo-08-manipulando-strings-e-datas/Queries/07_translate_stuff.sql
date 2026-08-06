USE ContosoRetailDW
GO

-- TRANSLATE e STUFF

-- TRANSLATE e STUFF: Outras funções de substituição

SELECT TRANSLATE('3*[2+1]/{8-4}', '[]{}', '()()')
GO

SELECT TRANSLATE('ABCD-490123', 'ABCD', 'WXYZ')
GO

SELECT STUFF('VBA Impressionador', 1, 3, 'Excel')
GO