alumno <- c("Carlos", "Maria", "Carmen", "Pedro", "Luís", "Sara")
sexo <- c("H", "M", "M", "H", "H", "M")
física <- c(6.7, 7.2, 5.5, NA, 3.5, 6.2)
química <- c(8.1, 9.5, 5, 4.5, 5, 4)
sexo <- factor(sexo)
levels(sexo)
notaMedia <- (física + química) / 2
aprobado <- notaMedia >= 5
alumnosAprobados <- alumno[aprobado]
df2 <- data.frame(alumno, sexo, física, química)
df2$notaMedia <- notaMedia
df2[sexo == "M" & aprobado, c("alumno", "notaMedia")]
