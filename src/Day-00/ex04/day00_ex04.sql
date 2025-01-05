SELECT CONCAT(
name, ' ',
'(age:', age,
',gender:''', gender,
''',address:''', address,
''')') as person_information
FROM public.person
ORDER by person_information ASC