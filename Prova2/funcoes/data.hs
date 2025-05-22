-- Definição do novo tipo
data StudentInfo = Student String Int Double deriving (Show)
-- Nova variável do tipo recém-criado
newStudent = Student "Fulano de Tal" 20 1.77
student2 = Student "Aluno2" 21 1.80
