<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Subject Classification Domain                -->
<!--  VERSION:   1.2                                               -->
<!--  DATE:      November 2009                                     -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA Map Subject Classification Domain//EN" -->
<!--       Delivered as file "classifyDomain.mod"                       -->
<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements and specialization attributes     -->
<!--             for Map Subject Classification Domain             -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             February 2008                                     -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2008, 2009.              -->
<!--             (C) Copyright IBM Corporation 2005, 2007.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2008.02.13 RDA: Created file based upon prototype from IBM -->
<!--    2010.01.21 RDA: Update subjectCell content to remove       -->
<!--                    duplicate element inclusion                -->
<!-- ============================================================= -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % topicsubject
                       "topicsubject"                                >
<!ENTITY % topicapply  "topicapply"                                  >
<!ENTITY % subjectref  "subjectref"                                  >
<!ENTITY % topicSubjectTable
                       "topicSubjectTable"                           >
<!ENTITY % topicSubjectHeader
                       "topicSubjectHeader"                          >
<!ENTITY % topicSubjectRow
                       "topicSubjectRow"                             >
<!ENTITY % topicCell   "topicCell"                                   >
<!ENTITY % subjectCell "subjectCell"                                 >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Topic Subject                   -->
<!ENTITY % topicsubject.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %subjectref; |
                          %topicref;)*)"
>
<!ENTITY % topicsubject.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    'resource-only'
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               %univ-atts;"
>
<!ELEMENT  topicsubject %topicsubject.content;>
<!ATTLIST  topicsubject %topicsubject.attributes;>


<!--                    LONG NAME: Topic Apply                     -->
<!ENTITY % topicapply.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %subjectref; |
                          %topicref;)*)"
>
<!ENTITY % topicapply.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    'resource-only'
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               %univ-atts;"
>
<!ELEMENT  topicapply %topicapply.content;>
<!ATTLIST  topicapply %topicapply.attributes;>


<!--                    LONG NAME: Subject Reference               -->
<!ENTITY % subjectref.content
                       "((%topicmeta;)?,
                         (%data.elements.incl;)*)"
>
<!ENTITY % subjectref.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    'resource-only'
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               %univ-atts;"
>
<!ELEMENT  subjectref %subjectref.content;>
<!ATTLIST  subjectref %subjectref.attributes;>


<!--                    LONG NAME: Topic Subject Relationship Table -->
<!ENTITY % topicSubjectTable.content
                       "((%title;)?,
                         (%topicmeta;)?,
                         (%topicSubjectHeader;)?,
                         (%topicSubjectRow;)+)"
>
<!ENTITY % topicSubjectTable.attributes
              "%topicref-atts-no-toc;
               %univ-atts;"
>
<!ELEMENT  topicSubjectTable %topicSubjectTable.content;>
<!ATTLIST  topicSubjectTable %topicSubjectTable.attributes;>


<!--                    LONG NAME: Topic Subject Table Header      -->
<!ENTITY % topicSubjectHeader.content
                       "((%topicCell;),
                         (%subjectCell;)+)"
>
<!ENTITY % topicSubjectHeader.attributes
              "%univ-atts;"
>
<!ELEMENT  topicSubjectHeader %topicSubjectHeader.content;>
<!ATTLIST  topicSubjectHeader %topicSubjectHeader.attributes;>


<!--                    LONG NAME: Topic Subject Table Row         -->
<!ENTITY % topicSubjectRow.content
                       "((%topicCell;),
                         (%subjectCell;)+)"
>
<!ENTITY % topicSubjectRow.attributes
              "%univ-atts;"
>
<!ELEMENT  topicSubjectRow %topicSubjectRow.content;>
<!ATTLIST  topicSubjectRow %topicSubjectRow.attributes;>


<!--                    LONG NAME: Topic Subject Table Cell        -->
<!ENTITY % topicCell.content
                       "(%data.elements.incl; |
                         %topicref;)+"
>
<!ENTITY % topicCell.attributes
              "%univ-atts;
               %topicref-atts;"
>
<!ELEMENT  topicCell %topicCell.content;>
<!ATTLIST  topicCell %topicCell.attributes;>


<!--                    LONG NAME: Topic Subject Cell              -->
<!ENTITY % subjectCell.content
                       "(%data.elements.incl; |
                         %subjectref; |
                         %topicref;)*"
>
<!ENTITY % subjectCell.attributes
              "%univ-atts;
               %topicref-atts;"
>
<!ELEMENT  subjectCell %subjectCell.content;>
<!ATTLIST  subjectCell %subjectCell.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  topicsubject   class CDATA "+ map/topicref classify-d/topicsubject ">
<!ATTLIST  topicapply     class CDATA "+ map/topicref classify-d/topicapply ">
<!ATTLIST  subjectref     class CDATA "+ map/topicref classify-d/subjectref ">
<!ATTLIST  topicSubjectTable   class CDATA "+ map/reltable classify-d/topicSubjectTable ">
<!ATTLIST  topicSubjectHeader   class CDATA "+ map/relrow classify-d/topicSubjectHeader ">
<!ATTLIST  topicSubjectRow   class CDATA "+ map/relrow classify-d/topicSubjectRow ">
<!ATTLIST  topicCell      class CDATA "+ map/relcell classify-d/topicCell ">
<!ATTLIST  subjectCell    class CDATA "+ map/relcell classify-d/subjectCell ">

<!-- ================== End of DITA Subject Classification Domain ==================== -->
 