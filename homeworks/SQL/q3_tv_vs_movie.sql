SELECT  type
       ,COUNT()
FROM titles
GROUP BY  type
ORDER BY COUNT();
--试过将count（）取别名，然后下面order by别名，运行时间无明显变化