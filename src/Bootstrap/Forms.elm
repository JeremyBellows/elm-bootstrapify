module Bootstrap.Forms exposing
  (
   FormAlignmentOption,
   form,
   formGroup,
   FormGroupOption(FormGroupDefault, FormGroupSmall, FormGroupLarge),
   formLabel,
   formInput,
   formTextArea
  )

{-| Bootstrap functions pertaining to forms

# Forms
@docs FormAlignmentOption, form, formGroup, FormGroupOption, formLabel, formInput, formTextArea

-}

import Html exposing (..)
import Html.Attributes exposing (..)

-- Forms
----------------------------------------------------------------------------

{-| Options for Form Alignment

    case formAlignmentOption of
      FormDefault -> ""
      FormHorizontal -> "form-horizontal"
      FormInline -> "form-inline"
-}
type FormAlignmentOption =
    FormDefault
  | FormHorizontal
  | FormInline

{-| Generates a form with the supplied alignment

    case formAlignmentOption of
      FormDefault -> ""
      FormHorizontal -> "form-horizontal"
      FormInline -> "form-inline"
-}
form : FormAlignmentOption -> List (Html msg) -> Html msg
form formAlignmentOption htmlList =
  let
    formAlignmentClass =
      case formAlignmentOption of
        FormDefault -> ""
        FormHorizontal -> "form-horizontal"
        FormInline -> "form-inline"
  in
    div [ class formAlignmentClass ] htmlList

{-|
  A set of different Form group options
-}
type FormGroupOption =
    FormGroupDefault
  | FormGroupSmall
  | FormGroupLarge

{-| Generates a formGroup html element

    formHorizontal
     [
      formGroup FormGroupDefault
        [
        ]
     ]
-}
formGroup : FormGroupOption -> List (Html msg) -> Html msg
formGroup formGroupOption htmlList =
  let
    formGroupOptionClass =
      case formGroupOption of
        FormGroupDefault -> ""
        FormGroupSmall -> "form-group-sm"
        FormGroupLarge -> "form-group-lg"
    formGroupClass =
      "form-group " ++ formGroupOptionClass
  in
    div [ class formGroupClass ] htmlList

{-| Generates a formLabel html element

    formHorizontal
     [
      formGroup FormGroupDefault
        [
         formLabel [] []
        ]
     ]
-}
formLabel : List (Attribute msg) -> List (Html msg) -> Html msg
formLabel attributes htmlList =
  let
    attributes = class "control-label" :: attributes
  in
    label attributes htmlList

{-| Generates a formInput html element

    formHorizontal
     [
      formGroup FormGroupDefault
        [
         formInput [] []
        ]
     ]
-}
formInput : List (Attribute msg) -> List (Html msg) -> Html msg
formInput attributes htmlList =
  let
    attributes = class "form-control" :: attributes
  in
    input attributes htmlList

{-| Generates a form text area html element

    formHorizontal
     [
      formGroup FormGroupDefault
        [
         formTextArea [] []
        ]
     ]
-}
formTextArea : List (Attribute msg) -> List (Html msg) -> Html msg
formTextArea attributes htmlList =
  let
    attributes = class "form-control" :: attributes
  in
    textarea attributes htmlList

----------------------------------------------------------------------------
