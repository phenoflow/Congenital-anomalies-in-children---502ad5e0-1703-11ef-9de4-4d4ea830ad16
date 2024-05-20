cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  congenital-anomalies-in-children-specified---secondary:
    run: congenital-anomalies-in-children-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  congenital-anomalies-in-children-hydrocephalus---secondary:
    run: congenital-anomalies-in-children-hydrocephalus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-specified---secondary/output
  congenital-anomalies-in-children-isomerism---secondary:
    run: congenital-anomalies-in-children-isomerism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hydrocephalus---secondary/output
  congenital-anomalies-in-children-encephalocele---secondary:
    run: congenital-anomalies-in-children-encephalocele---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-isomerism---secondary/output
  congenital-anomalies-in-children-situs---secondary:
    run: congenital-anomalies-in-children-situs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-encephalocele---secondary/output
  autosomal-congenital-anomalies-in-children---secondary:
    run: autosomal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-situs---secondary/output
  congenital-anomalies-in-children-cataract---secondary:
    run: congenital-anomalies-in-children-cataract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: autosomal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-klippelfeil---secondary:
    run: congenital-anomalies-in-children-klippelfeil---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-cataract---secondary/output
  polycystic-congenital-anomalies-in-children---secondary:
    run: polycystic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-klippelfeil---secondary/output
  congenital-anomalies-in-children-larynx---secondary:
    run: congenital-anomalies-in-children-larynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: polycystic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-imperfecta---secondary:
    run: congenital-anomalies-in-children-imperfecta---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-larynx---secondary/output
  congenital-anomalies-in-children-respiratory---secondary:
    run: congenital-anomalies-in-children-respiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-imperfecta---secondary/output
  congenital-anomalies-in-children-appendage---secondary:
    run: congenital-anomalies-in-children-appendage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-respiratory---secondary/output
  congenital-anomalies-in-children-dislocation---secondary:
    run: congenital-anomalies-in-children-dislocation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-appendage---secondary/output
  chromosomal-congenital-anomalies-in-children---secondary:
    run: chromosomal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-dislocation---secondary/output
  aortopulmonary-congenital-anomalies-in-children---secondary:
    run: aortopulmonary-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: chromosomal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-aorta---secondary:
    run: congenital-anomalies-in-children-aorta---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: aortopulmonary-congenital-anomalies-in-children---secondary/output
  ventriculoarterial-congenital-anomalies-in-children---secondary:
    run: ventriculoarterial-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-aorta---secondary/output
  congenital-anomalies-in-children-skull---secondary:
    run: congenital-anomalies-in-children-skull---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ventriculoarterial-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-microcephaly---secondary:
    run: congenital-anomalies-in-children-microcephaly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-skull---secondary/output
  congenital-anomalies-in-children-urachu---secondary:
    run: congenital-anomalies-in-children-urachu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-microcephaly---secondary/output
  subaortic-congenital-anomalies-in-children---secondary:
    run: subaortic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-urachu---secondary/output
  congenital-anomalies-in-children-fistulae---secondary:
    run: congenital-anomalies-in-children-fistulae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: subaortic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-defects---secondary:
    run: congenital-anomalies-in-children-defects---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-fistulae---secondary/output
  congenital-anomalies-in-children-megaloureter---secondary:
    run: congenital-anomalies-in-children-megaloureter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-defects---secondary/output
  precerebral-congenital-anomalies-in-children---secondary:
    run: precerebral-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-megaloureter---secondary/output
  congenital-anomalies-in-children-craniosynostosis---secondary:
    run: congenital-anomalies-in-children-craniosynostosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: precerebral-congenital-anomalies-in-children---secondary/output
  thoracic-congenital-anomalies-in-children---secondary:
    run: thoracic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-craniosynostosis---secondary/output
  congenital-anomalies-in-children-pharynx---secondary:
    run: congenital-anomalies-in-children-pharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: thoracic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-liver---secondary:
    run: congenital-anomalies-in-children-liver---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-pharynx---secondary/output
  congenital-anomalies-in-children-diaphragm---secondary:
    run: congenital-anomalies-in-children-diaphragm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-liver---secondary/output
  congenital-anomalies-in-children-oesophagu---secondary:
    run: congenital-anomalies-in-children-oesophagu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-diaphragm---secondary/output
  other-congenital-anomalies-in-children---secondary:
    run: other-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-oesophagu---secondary/output
  congenital-anomalies-in-children-luschka---secondary:
    run: congenital-anomalies-in-children-luschka---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: other-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-bullosa---secondary:
    run: congenital-anomalies-in-children-bullosa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-luschka---secondary/output
  congenital-anomalies-in-children-deformity---secondary:
    run: congenital-anomalies-in-children-deformity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-bullosa---secondary/output
  congenital-anomalies-in-children-palate---secondary:
    run: congenital-anomalies-in-children-palate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-deformity---secondary/output
  congenital-anomalies-in-children-fused---secondary:
    run: congenital-anomalies-in-children-fused---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-palate---secondary/output
  congenital-anomalies-in-children-testi---secondary:
    run: congenital-anomalies-in-children-testi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-fused---secondary/output
  congenital-anomalies-in-children-jejunum---secondary:
    run: congenital-anomalies-in-children-jejunum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-testi---secondary/output
  congenital-anomalies-in-children-diverticulum---secondary:
    run: congenital-anomalies-in-children-diverticulum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-jejunum---secondary/output
  congenital-anomalies-in-children-erythroderma---secondary:
    run: congenital-anomalies-in-children-erythroderma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-diverticulum---secondary/output
  congenital-anomalies-in-children-hydronephrosis---secondary:
    run: congenital-anomalies-in-children-hydronephrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-erythroderma---secondary/output
  congenital-anomalies-in-children-dilatation---secondary:
    run: congenital-anomalies-in-children-dilatation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hydronephrosis---secondary/output
  congenital-anomalies-in-children-scrotum---secondary:
    run: congenital-anomalies-in-children-scrotum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-dilatation---secondary/output
  congenital-anomalies-in-children-hermaphrodite---secondary:
    run: congenital-anomalies-in-children-hermaphrodite---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-scrotum---secondary/output
  congenital-anomalies-in-children-neurofibromatosis---secondary:
    run: congenital-anomalies-in-children-neurofibromatosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hermaphrodite---secondary/output
  congenital-anomalies-in-children-deferens---secondary:
    run: congenital-anomalies-in-children-deferens---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-neurofibromatosis---secondary/output
  congenital-anomalies-in-children-chondrodysplasia---secondary:
    run: congenital-anomalies-in-children-chondrodysplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-deferens---secondary/output
  congenital-anomalies-in-children-horseshoe---secondary:
    run: congenital-anomalies-in-children-horseshoe---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-chondrodysplasia---secondary/output
  congenital-anomalies-in-children-spondylolisthesis---secondary:
    run: congenital-anomalies-in-children-spondylolisthesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-horseshoe---secondary/output
  congenital-anomalies-in-children-syndrome---secondary:
    run: congenital-anomalies-in-children-syndrome---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-spondylolisthesis---secondary/output
  congenital-anomalies-in-children-ichthyosis---secondary:
    run: congenital-anomalies-in-children-ichthyosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-syndrome---secondary/output
  congenital-anomalies-in-children-tissue---secondary:
    run: congenital-anomalies-in-children-tissue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ichthyosis---secondary/output
  ectodermal-congenital-anomalies-in-children---secondary:
    run: ectodermal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-tissue---secondary/output
  congenital-anomalies-in-children-diastematomyelia---secondary:
    run: congenital-anomalies-in-children-diastematomyelia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ectodermal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-hydromyelia---secondary:
    run: congenital-anomalies-in-children-hydromyelia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-diastematomyelia---secondary/output
  congenital-anomalies-in-children-arnoldchiari---secondary:
    run: congenital-anomalies-in-children-arnoldchiari---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hydromyelia---secondary/output
  congenital-anomalies-in-children-causes---secondary:
    run: congenital-anomalies-in-children-causes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-arnoldchiari---secondary/output
  female-congenital-anomalies-in-children---secondary:
    run: female-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-causes---secondary/output
  congenital-anomalies-in-children---secondary:
    run: congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: female-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-ductus---secondary:
    run: congenital-anomalies-in-children-ductus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-ventricle---secondary:
    run: congenital-anomalies-in-children-ventricle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ductus---secondary/output
  congenital-anomalies-in-children-uterus---secondary:
    run: congenital-anomalies-in-children-uterus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ventricle---secondary/output
  congenital-anomalies-in-children-kidney---secondary:
    run: congenital-anomalies-in-children-kidney---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-uterus---secondary/output
  choroid-congenital-anomalies-in-children---secondary:
    run: choroid-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-kidney---secondary/output
  alimentary-congenital-anomalies-in-children---secondary:
    run: alimentary-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: choroid-congenital-anomalies-in-children---secondary/output
  mitral-congenital-anomalies-in-children---secondary:
    run: mitral-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: alimentary-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-macrophthalmo---secondary:
    run: congenital-anomalies-in-children-macrophthalmo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: mitral-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-marfan---secondary:
    run: congenital-anomalies-in-children-marfan---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-macrophthalmo---secondary/output
  facial-congenital-anomalies-in-children---secondary:
    run: facial-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-marfan---secondary/output
  congenital-anomalies-in-children-vulgaris---secondary:
    run: congenital-anomalies-in-children-vulgaris---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: facial-congenital-anomalies-in-children---secondary/output
  cervical-congenital-anomalies-in-children---secondary:
    run: cervical-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-vulgaris---secondary/output
  oculomandibular-congenital-anomalies-in-children---secondary:
    run: oculomandibular-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: cervical-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-hermaphroditism---secondary:
    run: congenital-anomalies-in-children-hermaphroditism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: oculomandibular-congenital-anomalies-in-children---secondary/output
  craniofacial-congenital-anomalies-in-children---secondary:
    run: craniofacial-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hermaphroditism---secondary/output
  congenital-anomalies-in-children-lymphoedema---secondary:
    run: congenital-anomalies-in-children-lymphoedema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: craniofacial-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-scoliosis---secondary:
    run: congenital-anomalies-in-children-scoliosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-lymphoedema---secondary/output
  congenital-anomalies-in-children-present---secondary:
    run: congenital-anomalies-in-children-present---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-scoliosis---secondary/output
  congenital-anomalies-in-children-coarctation---secondary:
    run: congenital-anomalies-in-children-coarctation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-present---secondary/output
  congenital-anomalies-in-children-septum---secondary:
    run: congenital-anomalies-in-children-septum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-coarctation---secondary/output
  congenital-anomalies-in-children-cervix---secondary:
    run: congenital-anomalies-in-children-cervix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-septum---secondary/output
  congenital-anomalies-in-children-stomach---secondary:
    run: congenital-anomalies-in-children-stomach---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-cervix---secondary/output
  digestive-congenital-anomalies-in-children---secondary:
    run: digestive-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-stomach---secondary/output
  ventricular-congenital-anomalies-in-children---secondary:
    run: ventricular-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: digestive-congenital-anomalies-in-children---secondary/output
  subglottic-congenital-anomalies-in-children---secondary:
    run: subglottic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: ventricular-congenital-anomalies-in-children---secondary/output
  complete-congenital-anomalies-in-children---secondary:
    run: complete-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: subglottic-congenital-anomalies-in-children---secondary/output
  coronary-congenital-anomalies-in-children---secondary:
    run: coronary-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: complete-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-trachea---secondary:
    run: congenital-anomalies-in-children-trachea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: coronary-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-cauda---secondary:
    run: congenital-anomalies-in-children-cauda---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-trachea---secondary/output
  congenital-anomalies-in-children-thigh---secondary:
    run: congenital-anomalies-in-children-thigh---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-cauda---secondary/output
  skeletal-congenital-anomalies-in-children---secondary:
    run: skeletal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-thigh---secondary/output
  congenital-anomalies-in-children-alcohol---secondary:
    run: congenital-anomalies-in-children-alcohol---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: skeletal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-auricle---secondary:
    run: congenital-anomalies-in-children-auricle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-alcohol---secondary/output
  congenital-anomalies-in-children-humour---secondary:
    run: congenital-anomalies-in-children-humour---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-auricle---secondary/output
  dystrophic-congenital-anomalies-in-children---secondary:
    run: dystrophic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-humour---secondary/output
  great-congenital-anomalies-in-children---secondary:
    run: great-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: dystrophic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-stenosis---secondary:
    run: congenital-anomalies-in-children-stenosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: great-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-hypospadia---secondary:
    run: congenital-anomalies-in-children-hypospadia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-stenosis---secondary/output
  congenital-anomalies-in-children-impairment---secondary:
    run: congenital-anomalies-in-children-impairment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hypospadia---secondary/output
  congenital-anomalies-in-children-notched---secondary:
    run: congenital-anomalies-in-children-notched---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-impairment---secondary/output
  congenital-anomalies-in-children-malformation---secondary:
    run: congenital-anomalies-in-children-malformation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-notched---secondary/output
  adrenal-congenital-anomalies-in-children---secondary:
    run: adrenal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-malformation---secondary/output
  congenital-anomalies-in-children-underdevelopment---secondary:
    run: congenital-anomalies-in-children-underdevelopment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: adrenal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-belly---secondary:
    run: congenital-anomalies-in-children-belly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-underdevelopment---secondary/output
  congenital-anomalies-in-children-breast---secondary:
    run: congenital-anomalies-in-children-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-belly---secondary/output
  congenital-anomalies-in-children-polysyndactyly---secondary:
    run: congenital-anomalies-in-children-polysyndactyly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-breast---secondary/output
  congenital-anomalies-in-children-marker---secondary:
    run: congenital-anomalies-in-children-marker---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-polysyndactyly---secondary/output
  optic-congenital-anomalies-in-children---secondary:
    run: optic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-marker---secondary/output
  fallopian-congenital-anomalies-in-children---secondary:
    run: fallopian-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: optic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-webbed---secondary:
    run: congenital-anomalies-in-children-webbed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: fallopian-congenital-anomalies-in-children---secondary/output
  partial-congenital-anomalies-in-children---secondary:
    run: partial-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-webbed---secondary/output
  congenital-anomalies-in-children-unicornate---secondary:
    run: congenital-anomalies-in-children-unicornate---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: partial-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-eyeball---secondary:
    run: congenital-anomalies-in-children-eyeball---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-unicornate---secondary/output
  congenital-anomalies-in-children-amyelia---secondary:
    run: congenital-anomalies-in-children-amyelia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-eyeball---secondary/output
  congenital-anomalies-in-children-turner---secondary:
    run: congenital-anomalies-in-children-turner---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-amyelia---secondary/output
  congenital-anomalies-in-children-dysmorphism---secondary:
    run: congenital-anomalies-in-children-dysmorphism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-turner---secondary/output
  congenital-anomalies-in-children-simplex---secondary:
    run: congenital-anomalies-in-children-simplex---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-dysmorphism---secondary/output
  congenital-anomalies-in-children-punctata---secondary:
    run: congenital-anomalies-in-children-punctata---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-simplex---secondary/output
  fetal-congenital-anomalies-in-children---secondary:
    run: fetal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-punctata---secondary/output
  pelvic-congenital-anomalies-in-children---secondary:
    run: pelvic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: fetal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-nondisjunction---secondary:
    run: congenital-anomalies-in-children-nondisjunction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: pelvic-congenital-anomalies-in-children---secondary/output
  urethral-congenital-anomalies-in-children---secondary:
    run: urethral-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-nondisjunction---secondary/output
  embryonic-congenital-anomalies-in-children---secondary:
    run: embryonic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: urethral-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-karyotype---secondary:
    run: congenital-anomalies-in-children-karyotype---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: embryonic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-letalis---secondary:
    run: congenital-anomalies-in-children-letalis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-karyotype---secondary/output
  congenital-anomalies-in-children-classified---secondary:
    run: congenital-anomalies-in-children-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-letalis---secondary/output
  congenital-anomalies-in-children-arteriosus---secondary:
    run: congenital-anomalies-in-children-arteriosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-classified---secondary/output
  congenital-anomalies-in-children-aphakia---secondary:
    run: congenital-anomalies-in-children-aphakia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-arteriosus---secondary/output
  congenital-anomalies-in-children-chimera---secondary:
    run: congenital-anomalies-in-children-chimera---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-aphakia---secondary/output
  congenital-anomalies-in-children-gallbladder---secondary:
    run: congenital-anomalies-in-children-gallbladder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-chimera---secondary/output
  congenital-anomalies-in-children-overgrowth---secondary:
    run: congenital-anomalies-in-children-overgrowth---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-gallbladder---secondary/output
  pancreatic-congenital-anomalies-in-children---secondary:
    run: pancreatic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-overgrowth---secondary/output
  congenital-anomalies-in-children-prometaphase---secondary:
    run: congenital-anomalies-in-children-prometaphase---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: pancreatic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-phlebectasia---secondary:
    run: congenital-anomalies-in-children-phlebectasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-prometaphase---secondary/output
  congenital-anomalies-in-children-penile---secondary:
    run: congenital-anomalies-in-children-penile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-phlebectasia---secondary/output
  congenital-anomalies-in-children-pleura---secondary:
    run: congenital-anomalies-in-children-pleura---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-penile---secondary/output
  congenital-anomalies-in-children-displaced---secondary:
    run: congenital-anomalies-in-children-displaced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-pleura---secondary/output
  metaphyseal-congenital-anomalies-in-children---secondary:
    run: metaphyseal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-displaced---secondary/output
  congenital-anomalies-in-children-mouth---secondary:
    run: congenital-anomalies-in-children-mouth---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: metaphyseal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-opacity---secondary:
    run: congenital-anomalies-in-children-opacity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-mouth---secondary/output
  congenital-anomalies-in-children-tricuspid---secondary:
    run: congenital-anomalies-in-children-tricuspid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-opacity---secondary/output
  congenital-anomalies-in-children-septa---secondary:
    run: congenital-anomalies-in-children-septa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-tricuspid---secondary/output
  congenital-anomalies-in-children-47xyy---secondary:
    run: congenital-anomalies-in-children-47xyy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-septa---secondary/output
  congenital-anomalies-in-children-translocation---secondary:
    run: congenital-anomalies-in-children-translocation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-47xyy---secondary/output
  ectopic-congenital-anomalies-in-children---secondary:
    run: ectopic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-translocation---secondary/output
  congenital-anomalies-in-children-holoprosencephaly---secondary:
    run: congenital-anomalies-in-children-holoprosencephaly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: ectopic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-pouch---secondary:
    run: congenital-anomalies-in-children-pouch---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-holoprosencephaly---secondary/output
  congenital-anomalies-in-children-craniorachischisis---secondary:
    run: congenital-anomalies-in-children-craniorachischisis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-pouch---secondary/output
  congenital-anomalies-in-children-appearance---secondary:
    run: congenital-anomalies-in-children-appearance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-craniorachischisis---secondary/output
  peripheral-congenital-anomalies-in-children---secondary:
    run: peripheral-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-appearance---secondary/output
  congenital-anomalies-in-children-multiplex---secondary:
    run: congenital-anomalies-in-children-multiplex---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: peripheral-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-anonychia---secondary:
    run: congenital-anomalies-in-children-anonychia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-multiplex---secondary/output
  congenital-anomalies-in-children-coloboma---secondary:
    run: congenital-anomalies-in-children-coloboma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-anonychia---secondary/output
  congenital-anomalies-in-children-gastroschisis---secondary:
    run: congenital-anomalies-in-children-gastroschisis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-coloboma---secondary/output
  congenital-anomalies-in-children-tibia---secondary:
    run: congenital-anomalies-in-children-tibia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-gastroschisis---secondary/output
  congenital-anomalies-in-children-bronchiectasis---secondary:
    run: congenital-anomalies-in-children-bronchiectasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-tibia---secondary/output
  congenital-anomalies-in-children-penis---secondary:
    run: congenital-anomalies-in-children-penis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-bronchiectasis---secondary/output
  congenital-anomalies-in-children-laryngocele---secondary:
    run: congenital-anomalies-in-children-laryngocele---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-penis---secondary/output
  choanal-congenital-anomalies-in-children---secondary:
    run: choanal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-laryngocele---secondary/output
  congenital-anomalies-in-children-mosaicism---secondary:
    run: congenital-anomalies-in-children-mosaicism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: choanal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-dextrocardia---secondary:
    run: congenital-anomalies-in-children-dextrocardia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-mosaicism---secondary/output
  congenital-anomalies-in-children-ovary---secondary:
    run: congenital-anomalies-in-children-ovary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-dextrocardia---secondary/output
  congenital-anomalies-in-children-nasal---secondary:
    run: congenital-anomalies-in-children-nasal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ovary---secondary/output
  frontal-congenital-anomalies-in-children---secondary:
    run: frontal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-nasal---secondary/output
  congenital-anomalies-in-children-nipple---secondary:
    run: congenital-anomalies-in-children-nipple---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: frontal-congenital-anomalies-in-children---secondary/output
  lower-congenital-anomalies-in-children---secondary:
    run: lower-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-nipple---secondary/output
  congenital-anomalies-in-children-callosum---secondary:
    run: congenital-anomalies-in-children-callosum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: lower-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-bronchu---secondary:
    run: congenital-anomalies-in-children-bronchu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-callosum---secondary/output
  hypoplastic-congenital-anomalies-in-children---secondary:
    run: hypoplastic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-bronchu---secondary/output
  congenital-anomalies-in-children-apparatus---secondary:
    run: congenital-anomalies-in-children-apparatus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: hypoplastic-congenital-anomalies-in-children---secondary/output
  nervous-congenital-anomalies-in-children---secondary:
    run: nervous-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-apparatus---secondary/output
  balanic-congenital-anomalies-in-children---secondary:
    run: balanic-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: nervous-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-fetus---secondary:
    run: congenital-anomalies-in-children-fetus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: balanic-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-exomphalo---secondary:
    run: congenital-anomalies-in-children-exomphalo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-fetus---secondary/output
  corneal-congenital-anomalies-in-children---secondary:
    run: corneal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-exomphalo---secondary/output
  congenital-anomalies-in-children-potter---secondary:
    run: congenital-anomalies-in-children-potter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: corneal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-sclerosis---secondary:
    run: congenital-anomalies-in-children-sclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-potter---secondary/output
  congenital-anomalies-in-children-megalencephaly---secondary:
    run: congenital-anomalies-in-children-megalencephaly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-sclerosis---secondary/output
  congenital-anomalies-in-children-pectus---secondary:
    run: congenital-anomalies-in-children-pectus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-megalencephaly---secondary/output
  congenital-anomalies-in-children-bifida---secondary:
    run: congenital-anomalies-in-children-bifida---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-pectus---secondary/output
  congenital-anomalies-in-children-forearm---secondary:
    run: congenital-anomalies-in-children-forearm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-bifida---secondary/output
  congenital-anomalies-in-children-circulatory---secondary:
    run: congenital-anomalies-in-children-circulatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-forearm---secondary/output
  congenital-anomalies-in-children-anophthalmo---secondary:
    run: congenital-anomalies-in-children-anophthalmo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-circulatory---secondary/output
  tetralogy-congenital-anomalies-in-children---secondary:
    run: tetralogy-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-anophthalmo---secondary/output
  congenital-anomalies-in-children-polyploidy---secondary:
    run: congenital-anomalies-in-children-polyploidy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: tetralogy-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-accessory---secondary:
    run: congenital-anomalies-in-children-accessory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-polyploidy---secondary/output
  congenital-anomalies-in-children-gland---secondary:
    run: congenital-anomalies-in-children-gland---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-accessory---secondary/output
  complex-congenital-anomalies-in-children---secondary:
    run: complex-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-gland---secondary/output
  sacral-congenital-anomalies-in-children---secondary:
    run: sacral-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: complex-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-hirschsprung---secondary:
    run: congenital-anomalies-in-children-hirschsprung---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: sacral-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-cloaca---secondary:
    run: congenital-anomalies-in-children-cloaca---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hirschsprung---secondary/output
  medullary-congenital-anomalies-in-children---secondary:
    run: medullary-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-cloaca---secondary/output
  congenital-anomalies-in-children-edwards---secondary:
    run: congenital-anomalies-in-children-edwards---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: medullary-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-changes---secondary:
    run: congenital-anomalies-in-children-changes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-edwards---secondary/output
  congenital-anomalies-in-children-system---secondary:
    run: congenital-anomalies-in-children-system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-changes---secondary/output
  short-congenital-anomalies-in-children---secondary:
    run: short-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-system---secondary/output
  congenital-anomalies-in-children-vagina---secondary:
    run: congenital-anomalies-in-children-vagina---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: short-congenital-anomalies-in-children---secondary/output
  portal-congenital-anomalies-in-children---secondary:
    run: portal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-vagina---secondary/output
  congenital-anomalies-in-children-twins---secondary:
    run: congenital-anomalies-in-children-twins---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: portal-congenital-anomalies-in-children---secondary/output
  right-congenital-anomalies-in-children---secondary:
    run: right-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-twins---secondary/output
  congenital-anomalies-in-children-colon---secondary:
    run: congenital-anomalies-in-children-colon---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: right-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-absence---secondary:
    run: congenital-anomalies-in-children-absence---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-colon---secondary/output
  congenital-anomalies-in-children-lobsterclaw---secondary:
    run: congenital-anomalies-in-children-lobsterclaw---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-absence---secondary/output
  congenital-anomalies-in-children-ehlersdanlo---secondary:
    run: congenital-anomalies-in-children-ehlersdanlo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-lobsterclaw---secondary/output
  congenital-anomalies-in-children-duodenum---secondary:
    run: congenital-anomalies-in-children-duodenum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ehlersdanlo---secondary/output
  spondyloepiphyseal-congenital-anomalies-in-children---secondary:
    run: spondyloepiphyseal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-duodenum---secondary/output
  congenital-anomalies-in-children-chamber---secondary:
    run: congenital-anomalies-in-children-chamber---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: spondyloepiphyseal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-mastocytosis---secondary:
    run: congenital-anomalies-in-children-mastocytosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-chamber---secondary/output
  congenital-anomalies-in-children-thorax---secondary:
    run: congenital-anomalies-in-children-thorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-mastocytosis---secondary/output
  congenital-anomalies-in-children-pigmenti---secondary:
    run: congenital-anomalies-in-children-pigmenti---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-thorax---secondary/output
  congenital-anomalies-in-children-tongue---secondary:
    run: congenital-anomalies-in-children-tongue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-pigmenti---secondary/output
  congenital-anomalies-in-children-eustachian---secondary:
    run: congenital-anomalies-in-children-eustachian---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-tongue---secondary/output
  congenital-anomalies-in-children-median---secondary:
    run: congenital-anomalies-in-children-median---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-eustachian---secondary/output
  congenital-anomalies-in-children-genitalia---secondary:
    run: congenital-anomalies-in-children-genitalia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-median---secondary/output
  congenital-anomalies-in-children-phocomelia---secondary:
    run: congenital-anomalies-in-children-phocomelia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-genitalia---secondary/output
  congenital-anomalies-in-children-achondroplasia---secondary:
    run: congenital-anomalies-in-children-achondroplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-phocomelia---secondary/output
  upper-congenital-anomalies-in-children---secondary:
    run: upper-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-achondroplasia---secondary/output
  congenital-anomalies-in-children-exstrophy---secondary:
    run: congenital-anomalies-in-children-exstrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: upper-congenital-anomalies-in-children---secondary/output
  lamellar-congenital-anomalies-in-children---secondary:
    run: lamellar-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-exstrophy---secondary/output
  congenital-anomalies-in-children-achondrogenesis---secondary:
    run: congenital-anomalies-in-children-achondrogenesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: lamellar-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-heart---secondary:
    run: congenital-anomalies-in-children-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-achondrogenesis---secondary/output
  pharyngeal-congenital-anomalies-in-children---secondary:
    run: pharyngeal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-heart---secondary/output
  congenital-anomalies-in-children-laevocardia---secondary:
    run: congenital-anomalies-in-children-laevocardia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: pharyngeal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-outlet---secondary:
    run: congenital-anomalies-in-children-outlet---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-laevocardia---secondary/output
  congenital-anomalies-in-children-sternum---secondary:
    run: congenital-anomalies-in-children-sternum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-outlet---secondary/output
  congenital-anomalies-in-children-sequestration---secondary:
    run: congenital-anomalies-in-children-sequestration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-sternum---secondary/output
  congenital-anomalies-in-children-epispadia---secondary:
    run: congenital-anomalies-in-children-epispadia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-sequestration---secondary/output
  congenital-anomalies-in-children-femur---secondary:
    run: congenital-anomalies-in-children-femur---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-epispadia---secondary/output
  congenital-anomalies-in-children-ossicle---secondary:
    run: congenital-anomalies-in-children-ossicle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-femur---secondary/output
  congenital-anomalies-in-children-middle---secondary:
    run: congenital-anomalies-in-children-middle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ossicle---secondary/output
  fibrous-congenital-anomalies-in-children---secondary:
    run: fibrous-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-middle---secondary/output
  congenital-anomalies-in-children-fixation---secondary:
    run: congenital-anomalies-in-children-fixation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: fibrous-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-aplasia---secondary:
    run: congenital-anomalies-in-children-aplasia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-fixation---secondary/output
  diaphyseal-congenital-anomalies-in-children---secondary:
    run: diaphyseal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-aplasia---secondary/output
  occipital-congenital-anomalies-in-children---secondary:
    run: occipital-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: diaphyseal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-radius---secondary:
    run: congenital-anomalies-in-children-radius---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: occipital-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-enchondromatosis---secondary:
    run: congenital-anomalies-in-children-enchondromatosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-radius---secondary/output
  penoscrotal-congenital-anomalies-in-children---secondary:
    run: penoscrotal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-enchondromatosis---secondary/output
  recessive-congenital-anomalies-in-children---secondary:
    run: recessive-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: penoscrotal-congenital-anomalies-in-children---secondary/output
  major-congenital-anomalies-in-children---secondary:
    run: major-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: recessive-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-pigmentosum---secondary:
    run: congenital-anomalies-in-children-pigmentosum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: major-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-laryngomalacia---secondary:
    run: congenital-anomalies-in-children-laryngomalacia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule244
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-pigmentosum---secondary/output
  congenital-anomalies-in-children-stature---secondary:
    run: congenital-anomalies-in-children-stature---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule245
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-laryngomalacia---secondary/output
  thanatophoric-congenital-anomalies-in-children---secondary:
    run: thanatophoric-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule246
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-stature---secondary/output
  congenital-anomalies-in-children-ebstein---secondary:
    run: congenital-anomalies-in-children-ebstein---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule247
      potentialCases:
        id: potentialCases
        source: thanatophoric-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-shoulder---secondary:
    run: congenital-anomalies-in-children-shoulder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule248
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ebstein---secondary/output
  congenital-anomalies-in-children-phakomatoses---secondary:
    run: congenital-anomalies-in-children-phakomatoses---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule249
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-shoulder---secondary/output
  vascular-congenital-anomalies-in-children---secondary:
    run: vascular-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule250
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-phakomatoses---secondary/output
  congenital-anomalies-in-children-lumbar---secondary:
    run: congenital-anomalies-in-children-lumbar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule251
      potentialCases:
        id: potentialCases
        source: vascular-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-47xxy---secondary:
    run: congenital-anomalies-in-children-47xxy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule252
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-lumbar---secondary/output
  congenital-anomalies-in-children-osteopetrosis---secondary:
    run: congenital-anomalies-in-children-osteopetrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule253
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-47xxy---secondary/output
  congenital-anomalies-in-children-discordant---secondary:
    run: congenital-anomalies-in-children-discordant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule254
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-osteopetrosis---secondary/output
  canal-congenital-anomalies-in-children---secondary:
    run: canal-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule255
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-discordant---secondary/output
  congenital-anomalies-in-children-arhinencephaly---secondary:
    run: congenital-anomalies-in-children-arhinencephaly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule256
      potentialCases:
        id: potentialCases
        source: canal-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-anencephaly---secondary:
    run: congenital-anomalies-in-children-anencephaly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule257
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-arhinencephaly---secondary/output
  congenital-anomalies-in-children-split---secondary:
    run: congenital-anomalies-in-children-split---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule258
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-anencephaly---secondary/output
  annular-congenital-anomalies-in-children---secondary:
    run: annular-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule259
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-split---secondary/output
  congenital-anomalies-in-children-sylviu---secondary:
    run: congenital-anomalies-in-children-sylviu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule260
      potentialCases:
        id: potentialCases
        source: annular-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-fibula---secondary:
    run: congenital-anomalies-in-children-fibula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule261
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-sylviu---secondary/output
  congenital-anomalies-in-children-glaucoma---secondary:
    run: congenital-anomalies-in-children-glaucoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule262
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-fibula---secondary/output
  congenital-anomalies-in-children-block---secondary:
    run: congenital-anomalies-in-children-block---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule263
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-glaucoma---secondary/output
  congenital-anomalies-in-children-iniencephaly---secondary:
    run: congenital-anomalies-in-children-iniencephaly---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule264
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-block---secondary/output
  congenital-anomalies-in-children-george---secondary:
    run: congenital-anomalies-in-children-george---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule265
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-iniencephaly---secondary/output
  congenital-anomalies-in-children-stricture---secondary:
    run: congenital-anomalies-in-children-stricture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule266
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-george---secondary/output
  congenital-anomalies-in-children-orbit---secondary:
    run: congenital-anomalies-in-children-orbit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule267
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-stricture---secondary/output
  congenital-anomalies-in-children-malposition---secondary:
    run: congenital-anomalies-in-children-malposition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule268
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-orbit---secondary/output
  congenital-anomalies-in-children-agenesis---secondary:
    run: congenital-anomalies-in-children-agenesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule269
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-malposition---secondary/output
  congenital-anomalies-in-children-ileum---secondary:
    run: congenital-anomalies-in-children-ileum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule270
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-agenesis---secondary/output
  congenital-anomalies-in-children-spherophakia---secondary:
    run: congenital-anomalies-in-children-spherophakia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule271
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ileum---secondary/output
  congenital-anomalies-in-children-patau---secondary:
    run: congenital-anomalies-in-children-patau---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule272
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-spherophakia---secondary/output
  congenital-anomalies-in-children-47xxx---secondary:
    run: congenital-anomalies-in-children-47xxx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule273
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-patau---secondary/output
  congenital-anomalies-in-children-artery---secondary:
    run: congenital-anomalies-in-children-artery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule274
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-47xxx---secondary/output
  congenital-anomalies-in-children-cleft---secondary:
    run: congenital-anomalies-in-children-cleft---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule275
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-artery---secondary/output
  congenital-anomalies-in-children-choledochal---secondary:
    run: congenital-anomalies-in-children-choledochal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule276
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-cleft---secondary/output
  congenital-anomalies-in-children-balanced---secondary:
    run: congenital-anomalies-in-children-balanced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule277
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-choledochal---secondary/output
  congenital-anomalies-in-children-bones---secondary:
    run: congenital-anomalies-in-children-bones---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule278
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-balanced---secondary/output
  congenital-anomalies-in-children-bronchomalacia---secondary:
    run: congenital-anomalies-in-children-bronchomalacia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule279
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-bones---secondary/output
  superior-congenital-anomalies-in-children---secondary:
    run: superior-congenital-anomalies-in-children---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule280
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-bronchomalacia---secondary/output
  congenital-anomalies-in-children-tracheomalacia---secondary:
    run: congenital-anomalies-in-children-tracheomalacia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule281
      potentialCases:
        id: potentialCases
        source: superior-congenital-anomalies-in-children---secondary/output
  congenital-anomalies-in-children-ureter---secondary:
    run: congenital-anomalies-in-children-ureter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule282
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-tracheomalacia---secondary/output
  congenital-anomalies-in-children-hypertelorism---secondary:
    run: congenital-anomalies-in-children-hypertelorism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule283
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-ureter---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule284
      potentialCases:
        id: potentialCases
        source: congenital-anomalies-in-children-hypertelorism---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
  inputModule244:
    id: inputModule244
    doc: Python implementation unit
    type: File
  inputModule245:
    id: inputModule245
    doc: Python implementation unit
    type: File
  inputModule246:
    id: inputModule246
    doc: Python implementation unit
    type: File
  inputModule247:
    id: inputModule247
    doc: Python implementation unit
    type: File
  inputModule248:
    id: inputModule248
    doc: Python implementation unit
    type: File
  inputModule249:
    id: inputModule249
    doc: Python implementation unit
    type: File
  inputModule250:
    id: inputModule250
    doc: Python implementation unit
    type: File
  inputModule251:
    id: inputModule251
    doc: Python implementation unit
    type: File
  inputModule252:
    id: inputModule252
    doc: Python implementation unit
    type: File
  inputModule253:
    id: inputModule253
    doc: Python implementation unit
    type: File
  inputModule254:
    id: inputModule254
    doc: Python implementation unit
    type: File
  inputModule255:
    id: inputModule255
    doc: Python implementation unit
    type: File
  inputModule256:
    id: inputModule256
    doc: Python implementation unit
    type: File
  inputModule257:
    id: inputModule257
    doc: Python implementation unit
    type: File
  inputModule258:
    id: inputModule258
    doc: Python implementation unit
    type: File
  inputModule259:
    id: inputModule259
    doc: Python implementation unit
    type: File
  inputModule260:
    id: inputModule260
    doc: Python implementation unit
    type: File
  inputModule261:
    id: inputModule261
    doc: Python implementation unit
    type: File
  inputModule262:
    id: inputModule262
    doc: Python implementation unit
    type: File
  inputModule263:
    id: inputModule263
    doc: Python implementation unit
    type: File
  inputModule264:
    id: inputModule264
    doc: Python implementation unit
    type: File
  inputModule265:
    id: inputModule265
    doc: Python implementation unit
    type: File
  inputModule266:
    id: inputModule266
    doc: Python implementation unit
    type: File
  inputModule267:
    id: inputModule267
    doc: Python implementation unit
    type: File
  inputModule268:
    id: inputModule268
    doc: Python implementation unit
    type: File
  inputModule269:
    id: inputModule269
    doc: Python implementation unit
    type: File
  inputModule270:
    id: inputModule270
    doc: Python implementation unit
    type: File
  inputModule271:
    id: inputModule271
    doc: Python implementation unit
    type: File
  inputModule272:
    id: inputModule272
    doc: Python implementation unit
    type: File
  inputModule273:
    id: inputModule273
    doc: Python implementation unit
    type: File
  inputModule274:
    id: inputModule274
    doc: Python implementation unit
    type: File
  inputModule275:
    id: inputModule275
    doc: Python implementation unit
    type: File
  inputModule276:
    id: inputModule276
    doc: Python implementation unit
    type: File
  inputModule277:
    id: inputModule277
    doc: Python implementation unit
    type: File
  inputModule278:
    id: inputModule278
    doc: Python implementation unit
    type: File
  inputModule279:
    id: inputModule279
    doc: Python implementation unit
    type: File
  inputModule280:
    id: inputModule280
    doc: Python implementation unit
    type: File
  inputModule281:
    id: inputModule281
    doc: Python implementation unit
    type: File
  inputModule282:
    id: inputModule282
    doc: Python implementation unit
    type: File
  inputModule283:
    id: inputModule283
    doc: Python implementation unit
    type: File
  inputModule284:
    id: inputModule284
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
