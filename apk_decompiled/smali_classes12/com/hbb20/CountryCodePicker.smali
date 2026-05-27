.class public Lcom/hbb20/CountryCodePicker;
.super Landroid/widget/RelativeLayout;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;,
        Lcom/hbb20/CountryCodePicker$DialogEventsListener;,
        Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;,
        Lcom/hbb20/CountryCodePicker$FailureListener;,
        Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;,
        Lcom/hbb20/CountryCodePicker$TextGravity;,
        Lcom/hbb20/CountryCodePicker$AutoDetectionPref;,
        Lcom/hbb20/CountryCodePicker$PhoneNumberType;,
        Lcom/hbb20/CountryCodePicker$Language;
    }
.end annotation


# static fields
.field private static ANDROID_NAME_SPACE:Ljava/lang/String; = null

.field static BUNDLE_SELECTED_CODE:Ljava/lang/String; = null

.field static final DEFAULT_UNSET:I = -0x63

.field static LIB_DEFAULT_COUNTRY_CODE:I

.field static TAG:Ljava/lang/String;

.field private static TEXT_GRAVITY_CENTER:I

.field private static TEXT_GRAVITY_LEFT:I

.field private static TEXT_GRAVITY_RIGHT:I


# instance fields
.field CCP_PREF_FILE:Ljava/lang/String;

.field areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

.field arrowColor:I

.field autoDetectCountryEnabled:Z

.field autoDetectLanguageEnabled:Z

.field borderFlagColor:I

.field ccpClickable:Z

.field ccpDialogInitialScrollToSelection:Z

.field ccpDialogShowFlag:Z

.field ccpDialogShowNameCode:Z

.field ccpDialogShowPhoneCode:Z

.field ccpDialogShowTitle:Z

.field ccpPadding:I

.field ccpTextgGravity:I

.field ccpUseDummyEmojiForPreview:Z

.field ccpUseEmoji:Z

.field codePicker:Lcom/hbb20/CountryCodePicker;

.field contentColor:I

.field context:Landroid/content/Context;

.field countryChangedDueToAreaCode:Z

.field countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

.field countryDetectionBasedOnAreaAllowed:Z

.field countryPreference:Ljava/lang/String;

.field private currentCountryGroup:Lcom/hbb20/CCPCountryGroup;

.field currentTextGravity:Lcom/hbb20/CountryCodePicker$TextGravity;

.field private customClickListener:Landroid/view/View$OnClickListener;

.field customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

.field private customDialogTextProvider:Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;

.field customMasterCountriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field customMasterCountriesParam:Ljava/lang/String;

.field defaultCCPCountry:Lcom/hbb20/CCPCountry;

.field defaultCountryCode:I

.field defaultCountryNameCode:Ljava/lang/String;

.field detectCountryWithAreaCode:Z

.field private dialogBackgroundColor:I

.field private dialogBackgroundResId:I

.field private dialogEventsListener:Lcom/hbb20/CountryCodePicker$DialogEventsListener;

.field dialogKeyboardAutoPopup:Z

.field private dialogSearchEditTextTintColor:I

.field private dialogTextColor:I

.field dialogTypeFace:Landroid/graphics/Typeface;

.field dialogTypeFaceStyle:I

.field editText_registeredCarrierNumber:Landroid/widget/EditText;

.field excludedCountriesParam:Ljava/lang/String;

.field private failureListener:Lcom/hbb20/CountryCodePicker$FailureListener;

.field fastScrollerBubbleColor:I

.field private fastScrollerBubbleTextAppearance:I

.field private fastScrollerHandleColor:I

.field formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

.field hintExampleNumberEnabled:Z

.field hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field holder:Landroid/widget/RelativeLayout;

.field holderView:Landroid/view/View;

.field imageViewArrow:Landroid/widget/ImageView;

.field imageViewFlag:Landroid/widget/ImageView;

.field internationalFormattingOnly:Z

.field languageToApply:Lcom/hbb20/CountryCodePicker$Language;

.field lastCheckedAreaCode:Ljava/lang/String;

.field lastCursorPosition:I

.field linearFlagBorder:Landroid/widget/LinearLayout;

.field linearFlagHolder:Landroid/widget/LinearLayout;

.field mInflater:Landroid/view/LayoutInflater;

.field numberAutoFormattingEnabled:Z

.field private onCountryChangeListener:Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

.field originalHint:Ljava/lang/String;

.field private phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

.field phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field preferredCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field relativeClickConsumer:Landroid/widget/RelativeLayout;

.field rememberLastSelection:Z

.field reportedValidity:Z

.field searchAllowed:Z

.field selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field selectedCCPCountry:Lcom/hbb20/CCPCountry;

.field selectionMemoryTag:Ljava/lang/String;

.field showArrow:Z

.field showCloseIcon:Z

.field showFastScroller:Z

.field showFlag:Z

.field showFullName:Z

.field showNameCode:Z

.field showPhoneCode:Z

.field textView_selectedCountry:Landroid/widget/TextView;

.field validityTextWatcher:Landroid/text/TextWatcher;

.field xmlWidth:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "CCP"

    sput-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "selectedCode"

    sput-object v0, Lcom/hbb20/CountryCodePicker;->BUNDLE_SELECTED_CODE:Ljava/lang/String;

    .line 50
    const/16 v0, 0x5b

    sput v0, Lcom/hbb20/CountryCodePicker;->LIB_DEFAULT_COUNTRY_CODE:I

    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_LEFT:I

    const/4 v0, 0x1

    sput v0, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_RIGHT:I

    const/4 v0, 0x0

    sput v0, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    .line 52
    const-string v0, "http://schemas.android.com/apk/res/android"

    sput-object v0, Lcom/hbb20/CountryCodePicker;->ANDROID_NAME_SPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "CCP_PREF_FILE"

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->originalHint:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    .line 78
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 79
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 80
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 82
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    .line 83
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 84
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 85
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 86
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 87
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 88
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 89
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 90
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 91
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 92
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpUseEmoji:Z

    .line 93
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpUseDummyEmojiForPreview:Z

    .line 94
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->internationalFormattingOnly:Z

    .line 95
    sget-object v2, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 96
    const-string v2, "ccp_last_selection"

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 97
    const/16 v2, -0x63

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    .line 98
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->arrowColor:I

    .line 103
    sget v2, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 106
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 110
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 111
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 113
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    .line 114
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    .line 115
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->autoDetectLanguageEnabled:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->autoDetectCountryEnabled:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    .line 116
    const-string v0, "notSet"

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 123
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 124
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 130
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    .line 132
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    .line 135
    new-instance v1, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    .line 154
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    .line 155
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->init(Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string v0, "CCP_PREF_FILE"

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->originalHint:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    .line 78
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 79
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 80
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 82
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    .line 83
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 84
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 85
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 86
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 87
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 88
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 89
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 90
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 91
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 92
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpUseEmoji:Z

    .line 93
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpUseDummyEmojiForPreview:Z

    .line 94
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->internationalFormattingOnly:Z

    .line 95
    sget-object v2, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 96
    const-string v2, "ccp_last_selection"

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 97
    const/16 v2, -0x63

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    .line 98
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->arrowColor:I

    .line 103
    sget v2, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 106
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 110
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 111
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 113
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    .line 114
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    .line 115
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->autoDetectLanguageEnabled:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->autoDetectCountryEnabled:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    .line 116
    const-string v0, "notSet"

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 123
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 124
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 130
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    .line 132
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    .line 135
    new-instance v0, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    .line 160
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    .line 161
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->init(Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string v0, "CCP_PREF_FILE"

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->originalHint:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    .line 78
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 79
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 80
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 82
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    .line 83
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 84
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 85
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 86
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 87
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 88
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 89
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 90
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 91
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 92
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpUseEmoji:Z

    .line 93
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ccpUseDummyEmojiForPreview:Z

    .line 94
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->internationalFormattingOnly:Z

    .line 95
    sget-object v2, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 96
    const-string v2, "ccp_last_selection"

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 97
    const/16 v2, -0x63

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    .line 98
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->arrowColor:I

    .line 103
    sget v2, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 106
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 110
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 111
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 113
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    .line 114
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    .line 115
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->autoDetectLanguageEnabled:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->autoDetectCountryEnabled:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    .line 116
    const-string v0, "notSet"

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 123
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 124
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 130
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    .line 132
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    .line 135
    new-instance v0, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    .line 166
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    .line 167
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->init(Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/hbb20/CountryCodePicker;

    .line 45
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountry;
    .locals 1
    .param p0, "x0"    # Lcom/hbb20/CountryCodePicker;

    .line 45
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;
    .locals 1
    .param p0, "x0"    # Lcom/hbb20/CountryCodePicker;

    .line 45
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->currentCountryGroup:Lcom/hbb20/CCPCountryGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/hbb20/CountryCodePicker;

    .line 45
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    return-object v0
.end method

.method private applyCustomProperty(Landroid/util/AttributeSet;)V
    .locals 14
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 232
    const-string v0, ""

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/hbb20/R$styleable;->CountryCodePicker:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 236
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showNameCode:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    .line 239
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_autoFormatNumber:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    .line 242
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showPhoneCode:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 245
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showPhoneCode:I

    iget-boolean v5, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 248
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showNameCode:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 251
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showTitle:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 254
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_useFlagEmoji:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpUseEmoji:Z

    .line 257
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_useDummyEmojiForPreview:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpUseDummyEmojiForPreview:Z

    .line 260
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showFlag:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 263
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_initialScrollToSelection:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 266
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showFullName:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 269
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showFastScroller:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    .line 272
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_fastScroller_bubbleColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 275
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_fastScroller_handleColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    .line 278
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_fastScroller_bubbleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    .line 281
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_autoDetectLanguage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->autoDetectLanguageEnabled:Z

    .line 284
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_areaCodeDetectedCountry:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 287
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_rememberLastSelection:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    .line 290
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_hintExampleNumber:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    .line 293
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_internationalFormattingOnly:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->internationalFormattingOnly:Z

    .line 296
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_padding:I

    iget-object v5, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/hbb20/R$dimen;->ccp_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ccpPadding:I

    .line 297
    iget-object v5, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 300
    sget v2, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_hintExampleNumberType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 301
    .local v2, "hintNumberTypeIndex":I
    invoke-static {}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->values()[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    move-result-object v5

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 304
    sget v5, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_selectionMemoryTag:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 305
    if-nez v5, :cond_0

    .line 306
    const-string v5, "CCP_last_selection"

    iput-object v5, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    .line 310
    :cond_0
    sget v5, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_countryAutoDetectionPref:I

    const/16 v6, 0x7b

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 311
    .local v5, "autoDetectionPrefValue":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->getPrefForValue(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    move-result-object v6

    iput-object v6, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 314
    sget v6, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_autoDetectCountry:I

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/hbb20/CountryCodePicker;->autoDetectCountryEnabled:Z

    .line 317
    sget v6, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showArrow:I

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 318
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->refreshArrowViewVisibility()V

    .line 321
    sget v6, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_showCloseIcon:I

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 324
    sget v6, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_showFlag:I

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/hbb20/CountryCodePicker;->showFlag(Z)V

    .line 327
    sget v6, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_keyboardAutoPopup:I

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/hbb20/CountryCodePicker;->setDialogKeyboardAutoPopup(Z)V

    .line 331
    sget v6, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_defaultLanguage:I

    sget-object v7, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v7}, Lcom/hbb20/CountryCodePicker$Language;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 332
    .local v6, "attrLanguage":I
    invoke-direct {p0, v6}, Lcom/hbb20/CountryCodePicker;->getLanguageEnum(I)Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v7

    iput-object v7, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 333
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateLanguageToApply()V

    .line 336
    sget v7, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_customMasterCountries:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    .line 337
    sget v7, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_excludedCountries:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 343
    :cond_1
    sget v7, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_countryPreference:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->refreshPreferredCountries()V

    .line 350
    :cond_2
    sget v7, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_textGravity:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 351
    sget v7, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_textGravity:I

    sget v8, Lcom/hbb20/CountryCodePicker;->TEXT_GRAVITY_CENTER:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    .line 353
    :cond_3
    iget v7, p0, Lcom/hbb20/CountryCodePicker;->ccpTextgGravity:I

    invoke-direct {p0, v7}, Lcom/hbb20/CountryCodePicker;->applyTextGravity(I)V

    .line 357
    sget v7, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_defaultNameCode:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    const/4 v8, 0x0

    .line 359
    .local v8, "setUsingNameCode":Z
    const-string v9, "IN"

    if-eqz v7, :cond_6

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 360
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_4

    .line 361
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v10

    iget-object v11, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v7, v10, v11}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 362
    const/4 v7, 0x1

    .line 363
    .end local v8    # "setUsingNameCode":Z
    .local v7, "setUsingNameCode":Z
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v10

    iget-object v11, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 364
    iget-object v8, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v8}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    move v8, v7

    goto :goto_0

    .line 367
    .end local v7    # "setUsingNameCode":Z
    .restart local v8    # "setUsingNameCode":Z
    :cond_4
    iget-object v7, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v7}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 368
    const/4 v7, 0x1

    .line 369
    .end local v8    # "setUsingNameCode":Z
    .restart local v7    # "setUsingNameCode":Z
    iget-object v8, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    invoke-static {v8}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 370
    iget-object v8, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v8}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    move v8, v7

    .line 375
    .end local v7    # "setUsingNameCode":Z
    .restart local v8    # "setUsingNameCode":Z
    :cond_5
    :goto_0
    if-nez v8, :cond_6

    .line 376
    invoke-static {v9}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 377
    iget-object v7, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v7}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 378
    const/4 v8, 0x1

    .line 383
    :cond_6
    sget v7, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_defaultPhoneCode:I

    const/4 v10, -0x1

    invoke-virtual {v1, v7, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 384
    .local v7, "defaultCountryCode":I
    if-nez v8, :cond_a

    if-eq v7, v10, :cond_a

    .line 385
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v11

    if-nez v11, :cond_8

    .line 387
    if-eq v7, v10, :cond_7

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v10

    iget-object v11, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v10, v11, v7}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_7

    .line 388
    sget v0, Lcom/hbb20/CountryCodePicker;->LIB_DEFAULT_COUNTRY_CODE:I

    move v7, v0

    .line 390
    :cond_7
    invoke-virtual {p0, v7}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingPhoneCode(I)V

    .line 391
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    goto :goto_1

    .line 394
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hbb20/CCPCountry;->getCountryForCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v10

    .line 395
    .local v10, "defaultCountry":Lcom/hbb20/CCPCountry;
    if-nez v10, :cond_9

    .line 396
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/hbb20/CountryCodePicker;->LIB_DEFAULT_COUNTRY_CODE:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/CCPCountry;->getCountryForCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    move-object v10, v0

    .line 398
    :cond_9
    invoke-direct {p0, v10}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 399
    invoke-virtual {p0, v10}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 404
    .end local v10    # "defaultCountry":Lcom/hbb20/CCPCountry;
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_b

    .line 405
    invoke-static {v9}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 406
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    if-nez v0, :cond_b

    .line 407
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 413
    :cond_b
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isAutoDetectCountryEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 414
    invoke-virtual {p0, v4}, Lcom/hbb20/CountryCodePicker;->setAutoDetectedCountry(Z)V

    .line 418
    :cond_c
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 419
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->loadLastSelectedCountryInCCP()V

    .line 423
    :cond_d
    sget v0, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_arrowColor:I

    const/16 v9, -0x63

    invoke-virtual {v1, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 424
    .local v0, "arrowColor":I
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowColor(I)V

    .line 428
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 429
    sget v10, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_contentColor:I

    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .local v10, "contentColor":I
    goto :goto_2

    .line 431
    .end local v10    # "contentColor":I
    :cond_e
    sget v10, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_contentColor:I

    iget-object v11, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/hbb20/R$color;->defaultContentColor:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 433
    .restart local v10    # "contentColor":I
    :goto_2
    if-eq v10, v9, :cond_f

    .line 434
    invoke-virtual {p0, v10}, Lcom/hbb20/CountryCodePicker;->setContentColor(I)V

    .line 439
    :cond_f
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 440
    sget v9, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_flagBorderColor:I

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .local v9, "borderFlagColor":I
    goto :goto_3

    .line 442
    .end local v9    # "borderFlagColor":I
    :cond_10
    sget v9, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_flagBorderColor:I

    iget-object v11, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/hbb20/R$color;->defaultBorderFlagColor:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 444
    .restart local v9    # "borderFlagColor":I
    :goto_3
    if-eqz v9, :cond_11

    .line 445
    invoke-virtual {p0, v9}, Lcom/hbb20/CountryCodePicker;->setFlagBorderColor(I)V

    .line 449
    :cond_11
    sget v11, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_backgroundColor:I

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/hbb20/CountryCodePicker;->setDialogBackgroundColor(I)V

    .line 450
    sget v11, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_background:I

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/hbb20/CountryCodePicker;->setDialogBackground(I)V

    .line 451
    sget v11, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_textColor:I

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/hbb20/CountryCodePicker;->setDialogTextColor(I)V

    .line 452
    sget v11, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_searchEditTextTint:I

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/hbb20/CountryCodePicker;->setDialogSearchEditTextTintColor(I)V

    .line 455
    sget v11, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_textSize:I

    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 456
    .local v11, "textSize":I
    if-lez v11, :cond_12

    .line 457
    iget-object v12, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    int-to-float v13, v11

    invoke-virtual {v12, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 458
    invoke-virtual {p0, v11}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    .line 459
    invoke-virtual {p0, v11}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 463
    :cond_12
    sget v12, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_arrowSize:I

    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 464
    .local v3, "arrowSize":I
    if-lez v3, :cond_13

    .line 465
    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 468
    :cond_13
    sget v12, Lcom/hbb20/R$styleable;->CountryCodePicker_ccpDialog_allowSearch:I

    invoke-virtual {v1, v12, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 469
    sget v12, Lcom/hbb20/R$styleable;->CountryCodePicker_ccp_clickable:I

    invoke-virtual {v1, v12, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/hbb20/CountryCodePicker;->setCcpClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "arrowColor":I
    .end local v2    # "hintNumberTypeIndex":I
    .end local v3    # "arrowSize":I
    .end local v5    # "autoDetectionPrefValue":I
    .end local v6    # "attrLanguage":I
    .end local v7    # "defaultCountryCode":I
    .end local v8    # "setUsingNameCode":Z
    .end local v9    # "borderFlagColor":I
    .end local v10    # "contentColor":I
    .end local v11    # "textSize":I
    goto :goto_4

    .line 482
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 471
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 483
    nop

    .line 484
    return-void

    .line 482
    :goto_5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 483
    throw v0
.end method

.method private applyTextGravity(I)V
    .locals 2
    .param p1, "enumIndex"    # I

    .line 678
    sget-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->LEFT:Lcom/hbb20/CountryCodePicker$TextGravity;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$TextGravity;->enumIndex:I

    if-ne p1, v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 680
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->CENTER:Lcom/hbb20/CountryCodePicker$TextGravity;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$TextGravity;->enumIndex:I

    if-ne p1, v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 685
    :goto_0
    return-void
.end method

.method private detectCarrierNumber(Ljava/lang/String;Lcom/hbb20/CCPCountry;)Ljava/lang/String;
    .locals 2
    .param p1, "fullNumber"    # Ljava/lang/String;
    .param p2, "CCPCountry"    # Lcom/hbb20/CCPCountry;

    .line 1470
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1473
    :cond_0
    invoke-virtual {p2}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1474
    .local v0, "indexOfCode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1475
    move-object v1, p1

    .local v1, "carrierNumber":Ljava/lang/String;
    goto :goto_1

    .line 1477
    .end local v1    # "carrierNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "carrierNumber":Ljava/lang/String;
    goto :goto_1

    .line 1471
    .end local v0    # "indexOfCode":I
    .end local v1    # "carrierNumber":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v1, p1

    .line 1480
    .restart local v1    # "carrierNumber":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method private getCCPLanguageFromLocale()Lcom/hbb20/CountryCodePicker$Language;
    .locals 7

    .line 726
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 728
    .local v0, "currentLocale":Ljava/util/Locale;
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 729
    .local v4, "language":Lcom/hbb20/CountryCodePicker$Language;
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 731
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCountry()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 732
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 735
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    .line 736
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getScript()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 737
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 738
    :cond_1
    return-object v4

    .line 733
    :cond_2
    :goto_1
    return-object v4

    .line 728
    .end local v4    # "language":Lcom/hbb20/CountryCodePicker$Language;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 743
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCountryCodeHolderClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getCountryDetectorTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Lcom/hbb20/CountryCodePicker$2;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$2;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private getDefaultCountry()Lcom/hbb20/CCPCountry;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    return-object v0
.end method

.method private getEnteredPhoneNumber()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/michaelrocks/libphonenumber/android/NumberParseException;
        }
    .end annotation

    .line 1802
    const-string v0, ""

    .line 1803
    .local v0, "carrierNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1804
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1806
    :cond_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    return-object v1
.end method

.method private getHolderView()Landroid/view/View;
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    return-object v0
.end method

.method private getLanguageEnum(I)Lcom/hbb20/CountryCodePicker$Language;
    .locals 1
    .param p1, "index"    # I

    .line 1489
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1490
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 1492
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method private getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .locals 1

    .line 2175
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->createInstance(Landroid/content/Context;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    return-object v0
.end method

.method private getSelectedCountry()Lcom/hbb20/CCPCountry;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    if-nez v0, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    return-object v0
.end method

.method private getSelectedHintNumberType()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;
    .locals 2

    .line 919
    sget-object v0, Lcom/hbb20/CountryCodePicker$4;->$SwitchMap$com$hbb20$CountryCodePicker$PhoneNumberType:[I

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 946
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 944
    :pswitch_0
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 941
    :pswitch_1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 939
    :pswitch_2
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->UAN:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 937
    :pswitch_3
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PAGER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 935
    :pswitch_4
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 933
    :pswitch_5
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->VOIP:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 931
    :pswitch_6
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 929
    :pswitch_7
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 927
    :pswitch_8
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 925
    :pswitch_9
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 923
    :pswitch_a
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 921
    :pswitch_b
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getmInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 203
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    if-eqz p1, :cond_0

    .line 206
    sget-object v0, Lcom/hbb20/CountryCodePicker;->ANDROID_NAME_SPACE:Ljava/lang/String;

    const-string v1, "layout_width"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->removeAllViewsInLayout()V

    .line 210
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const-string v2, "fill_parent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->xmlWidth:Ljava/lang/String;

    const-string v2, "match_parent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/R$layout;->layout_full_width_code_picker:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/R$layout;->layout_code_picker:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->textView_selectedCountry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->countryCodeHolder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->holder:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->imageView_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    .line 219
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->image_flag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->linear_flag_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagHolder:Landroid/widget/LinearLayout;

    .line 221
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->linear_flag_border:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagBorder:Landroid/widget/LinearLayout;

    .line 222
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    sget v1, Lcom/hbb20/R$id;->rlClickConsumer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    .line 223
    iput-object p0, p0, Lcom/hbb20/CountryCodePicker;->codePicker:Lcom/hbb20/CountryCodePicker;

    .line 224
    if-eqz p1, :cond_3

    .line 225
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->applyCustomProperty(Landroid/util/AttributeSet;)V

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method private isAlreadyInList(Lcom/hbb20/CCPCountry;Ljava/util/List;)Z
    .locals 4
    .param p1, "CCPCountry"    # Lcom/hbb20/CCPCountry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hbb20/CCPCountry;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;)Z"
        }
    .end annotation

    .line 1452
    .local p2, "CCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1453
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 1454
    .local v1, "iterationCCPCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1455
    const/4 v0, 0x1

    return v0

    .line 1457
    .end local v1    # "iterationCCPCountry":Lcom/hbb20/CCPCountry;
    :cond_0
    goto :goto_0

    .line 1459
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isInternationalFormattingOnlyEnabled()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->internationalFormattingOnly:Z

    return v0
.end method

.method private isNumberAutoFormattingEnabled()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    return v0
.end method

.method private loadLastSelectedCountryInCCP()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 505
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "lastSelectedCountryNameCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setCountryForNameCode(Ljava/lang/String;)V

    .line 511
    :cond_0
    return-void
.end method

.method private refreshArrowViewVisibility()V
    .locals 2

    .line 487
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    :goto_0
    return-void
.end method

.method private refreshFlagVisibility()V
    .locals 2

    .line 2061
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 2062
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpUseEmoji:Z

    if-eqz v0, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagHolder:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2068
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2070
    :goto_0
    return-void
.end method

.method private setCustomDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 3
    .param p1, "customDefaultLanguage"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 1059
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 1060
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateLanguageToApply()V

    .line 1061
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {v2}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1062
    return-void
.end method

.method private setDefaultCountry(Lcom/hbb20/CCPCountry;)V
    .locals 0
    .param p1, "defaultCCPCountry"    # Lcom/hbb20/CCPCountry;

    .line 751
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    .line 753
    return-void
.end method

.method private setHolder(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "holder"    # Landroid/widget/RelativeLayout;

    .line 1077
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->holder:Landroid/widget/RelativeLayout;

    .line 1078
    return-void
.end method

.method private setHolderView(Landroid/view/View;)V
    .locals 0
    .param p1, "holderView"    # Landroid/view/View;

    .line 1069
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->holderView:Landroid/view/View;

    .line 1070
    return-void
.end method

.method private updateCountryGroup()V
    .locals 1

    .line 878
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result v0

    invoke-static {v0}, Lcom/hbb20/CCPCountryGroup;->getCountryGroupForPhoneCode(I)Lcom/hbb20/CCPCountryGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->currentCountryGroup:Lcom/hbb20/CCPCountryGroup;

    .line 879
    return-void
.end method

.method private updateFormattingTextWatcher()V
    .locals 7

    .line 962
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    if-eqz v1, :cond_4

    .line 963
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "enteredValue":Ljava/lang/String;
    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "digitsValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

    if-eqz v2, :cond_0

    .line 967
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 970
    :cond_0
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_1

    .line 971
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 974
    :cond_1
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    if-eqz v2, :cond_2

    .line 975
    new-instance v2, Lcom/hbb20/InternationalPhoneTextWatcher;

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result v5

    iget-boolean v6, p0, Lcom/hbb20/CountryCodePicker;->internationalFormattingOnly:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/hbb20/InternationalPhoneTextWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

    .line 976
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 980
    :cond_2
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    if-eqz v2, :cond_3

    .line 981
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCountryDetectorTextWatcher()Landroid/text/TextWatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->areaCodeCountryDetectorTextWatcher:Landroid/text/TextWatcher;

    .line 982
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 986
    :cond_3
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 989
    .end local v0    # "enteredValue":Ljava/lang/String;
    .end local v1    # "digitsValue":Ljava/lang/String;
    goto :goto_0

    .line 990
    :cond_4
    if-nez v0, :cond_5

    .line 991
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormattingTextWatcher: EditText not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    :cond_5
    sget-object v0, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormattingTextWatcher: selected country is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_0
    return-void
.end method

.method private updateHint()V
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    if-eqz v0, :cond_3

    .line 886
    const-string v0, ""

    .line 887
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedHintNumberType()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 888
    .local v1, "exampleNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    if-eqz v1, :cond_1

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    :goto_0
    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 905
    :cond_1
    if-nez v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->originalHint:Ljava/lang/String;

    .line 909
    :cond_2
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 911
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "exampleNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    :cond_3
    return-void
.end method

.method private updateLanguageToApply()V
    .locals 2

    .line 697
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    .line 699
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_1

    .line 701
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_1

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isAutoDetectLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCCPLanguageFromLocale()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    .line 706
    .local v0, "localeBasedLanguage":Lcom/hbb20/CountryCodePicker$Language;
    if-nez v0, :cond_3

    .line 707
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 708
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 710
    :cond_2
    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 713
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 715
    .end local v0    # "localeBasedLanguage":Lcom/hbb20/CountryCodePicker$Language;
    :goto_0
    goto :goto_1

    .line 716
    :cond_4
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 717
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_1

    .line 719
    :cond_5
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 723
    :goto_1
    return-void
.end method

.method private updateValidityTextWatcher()V
    .locals 2

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->validityTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 1164
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    if-eqz v1, :cond_0

    .line 1165
    invoke-interface {v1, v0}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    .line 1168
    :cond_0
    new-instance v0, Lcom/hbb20/CountryCodePicker$3;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$3;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->validityTextWatcher:Landroid/text/TextWatcher;

    .line 1192
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1193
    return-void
.end method


# virtual methods
.method public changeDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 1985
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->setCustomDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V

    .line 1986
    return-void
.end method

.method public deregisterCarrierNumberEditText()V
    .locals 2

    .line 1780
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1783
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->validityTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    goto :goto_0

    .line 1784
    :catch_0
    move-exception v0

    .line 1790
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->formattingTextWatcher:Lcom/hbb20/InternationalPhoneTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1793
    goto :goto_1

    .line 1791
    :catch_1
    move-exception v0

    .line 1795
    :goto_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    .line 1799
    :cond_0
    return-void
.end method

.method public detectLocaleCountry(Z)Z
    .locals 4
    .param p1, "loadDefaultWhenFails"    # Z

    .line 2289
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 2290
    .local v1, "localeCountryISO":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2296
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 2297
    const/4 v0, 0x1

    return v0

    .line 2291
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2292
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2294
    :cond_2
    return v0

    .line 2298
    .end local v1    # "localeCountryISO":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2299
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2300
    if-eqz p1, :cond_3

    .line 2301
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    .line 2303
    :cond_3
    return v0
.end method

.method public detectNetworkCountry(Z)Z
    .locals 5
    .param p1, "loadDefaultWhenFails"    # Z

    .line 2261
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2262
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 2263
    .local v2, "networkCountryISO":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2269
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 2270
    const/4 v0, 0x1

    return v0

    .line 2264
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2265
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2267
    :cond_2
    return v0

    .line 2271
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "networkCountryISO":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2272
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2273
    if-eqz p1, :cond_3

    .line 2274
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    .line 2276
    :cond_3
    return v0
.end method

.method public detectSIMCountry(Z)Z
    .locals 5
    .param p1, "loadDefaultWhenFails"    # Z

    .line 2233
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2234
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 2235
    .local v2, "simCountryISO":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2241
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 2242
    const/4 v0, 0x1

    return v0

    .line 2236
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2237
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    :cond_2
    return v0

    .line 2243
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "simCountryISO":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2244
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2245
    if-eqz p1, :cond_3

    .line 2246
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    .line 2248
    :cond_3
    return v0
.end method

.method public enableDialogInitialScrollToSelection(Z)V
    .locals 1
    .param p1, "initialScrollToSelection"    # Z

    .line 2352
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    .line 2353
    return-void
.end method

.method public getCcpDialogShowFlag()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    return v0
.end method

.method public getCcpDialogShowNameCode()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    return v0
.end method

.method public getCcpDialogShowTitle()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    return v0
.end method

.method public getContentColor()I
    .locals 1

    .line 1874
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    return v0
.end method

.method getCurrentTextGravity()Lcom/hbb20/CountryCodePicker$TextGravity;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->currentTextGravity:Lcom/hbb20/CountryCodePicker$TextGravity;

    return-object v0
.end method

.method getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customDefaultLanguage:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method getCustomMasterCountriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 1376
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    return-object v0
.end method

.method getCustomMasterCountriesParam()Ljava/lang/String;
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCodeAsInt()I
    .locals 2

    .line 1594
    const/4 v0, 0x0

    .line 1596
    .local v0, "code":I
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1599
    goto :goto_0

    .line 1597
    :catch_0
    move-exception v1

    .line 1598
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1600
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getDefaultCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCountryName()Ljava/lang/String;
    .locals 1

    .line 1622
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryNameCode()Ljava/lang/String;
    .locals 1

    .line 1633
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDialogBackgroundColor()I
    .locals 1

    .line 1204
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogBackgroundColor:I

    return v0
.end method

.method getDialogBackgroundResId()I
    .locals 1

    .line 1217
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogBackgroundResId:I

    return v0
.end method

.method protected getDialogEventsListener()Lcom/hbb20/CountryCodePicker$DialogEventsListener;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->dialogEventsListener:Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    return-object v0
.end method

.method getDialogSearchEditTextTintColor()I
    .locals 1

    .line 1230
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogSearchEditTextTintColor:I

    return v0
.end method

.method getDialogTextColor()I
    .locals 1

    .line 1243
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogTextColor:I

    return v0
.end method

.method getDialogTitle()Ljava/lang/String;
    .locals 3

    .line 1500
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/CCPCountry;->getDialogTitle(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "defaultTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->customDialogTextProvider:Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;

    if-eqz v1, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;->getCCPDialogTitle(Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1504
    :cond_0
    return-object v0
.end method

.method getDialogTypeFace()Landroid/graphics/Typeface;
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method getDialogTypeFaceStyle()I
    .locals 1

    .line 1261
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFaceStyle:I

    return v0
.end method

.method getEditText_registeredCarrierNumber()Landroid/widget/EditText;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method getFastScrollerBubbleColor()I
    .locals 1

    .line 651
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    return v0
.end method

.method getFastScrollerBubbleTextAppearance()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    return v0
.end method

.method getFastScrollerHandleColor()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    return v0
.end method

.method public getFormattedFullNumber()Ljava/lang/String;
    .locals 4

    .line 1853
    :try_start_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getEnteredPhoneNumber()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1854
    .local v0, "phoneNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v2

    sget-object v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->format(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1855
    .end local v0    # "phoneNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v0

    .line 1856
    .local v0, "e":Lio/michaelrocks/libphonenumber/android/NumberParseException;
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v2, "getFullNumber: Could not parse number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumberWithPlus()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFullNumber()Ljava/lang/String;
    .locals 3

    .line 1816
    :try_start_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getEnteredPhoneNumber()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1817
    .local v0, "phoneNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->E164:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->format(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1818
    .end local v0    # "phoneNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Lio/michaelrocks/libphonenumber/android/NumberParseException;
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v2, "getFullNumber: Could not parse number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFullNumberWithPlus()Ljava/lang/String;
    .locals 2

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHolder()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->holder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getImageViewFlag()Landroid/widget/ImageView;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    if-nez v0, :cond_0

    .line 952
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateLanguageToApply()V

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method getNoResultACK()Ljava/lang/String;
    .locals 3

    .line 1524
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/CCPCountry;->getNoResultFoundAckMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "defaultNoResultACK":Ljava/lang/String;
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->customDialogTextProvider:Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;

    if-eqz v1, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;->getCCPDialogNoResultACK(Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1528
    :cond_0
    return-object v0
.end method

.method getSearchHintText()Ljava/lang/String;
    .locals 3

    .line 1512
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/CCPCountry;->getSearchHintMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, "defaultHint":Ljava/lang/String;
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->customDialogTextProvider:Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;

    if-eqz v1, :cond_0

    .line 1514
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;->getCCPDialogSearchHintText(Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1516
    :cond_0
    return-object v0
.end method

.method public getSelectedCountryCode()Ljava/lang/String;
    .locals 1

    .line 1652
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryCodeAsInt()I
    .locals 2

    .line 1674
    const/4 v0, 0x0

    .line 1676
    .local v0, "code":I
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1679
    goto :goto_0

    .line 1677
    :catch_0
    move-exception v1

    .line 1678
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1680
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getSelectedCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryEnglishName()Ljava/lang/String;
    .locals 1

    .line 1702
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getEnglishName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryFlagResourceId()I
    .locals 1

    .line 1724
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/CCPCountry;->flagResID:I

    return v0
.end method

.method public getSelectedCountryName()Ljava/lang/String;
    .locals 1

    .line 1691
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryNameCode()Ljava/lang/String;
    .locals 1

    .line 1713
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView_selectedCountry()Landroid/widget/TextView;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    return-object v0
.end method

.method isAutoDetectCountryEnabled()Z
    .locals 1

    .line 1085
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->autoDetectCountryEnabled:Z

    return v0
.end method

.method isAutoDetectLanguageEnabled()Z
    .locals 1

    .line 1081
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->autoDetectLanguageEnabled:Z

    return v0
.end method

.method isCcpClickable()Z
    .locals 1

    .line 1423
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    return v0
.end method

.method isCcpDialogShowPhoneCode()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    return v0
.end method

.method public isDialogInitialScrollToSelectionEnabled()Z
    .locals 1

    .line 2340
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogInitialScrollToSelection:Z

    return v0
.end method

.method isDialogKeyboardAutoPopup()Z
    .locals 1

    .line 1089
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    return v0
.end method

.method public isSearchAllowed()Z
    .locals 1

    .line 2089
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    return v0
.end method

.method protected isShowCloseIcon()Z
    .locals 1

    .line 1116
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    return v0
.end method

.method isShowFastScroller()Z
    .locals 1

    .line 1103
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    return v0
.end method

.method isShowPhoneCode()Z
    .locals 1

    .line 595
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    return v0
.end method

.method public isValidFullNumber()Z
    .locals 4

    .line 2159
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2160
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {v3}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {v3}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 2161
    .local v1, "phoneNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->isValidNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z

    move-result v0

    return v0

    .line 2162
    .end local v1    # "phoneNumber":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2163
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    const-string v2, "No editText for Carrier number found."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2164
    return v0

    .line 2166
    :cond_1
    return v0

    .line 2168
    :catch_0
    move-exception v1

    .line 2170
    .local v1, "e":Lio/michaelrocks/libphonenumber/android/NumberParseException;
    return v0
.end method

.method public launchCountrySelectionDialog()V
    .locals 1

    .line 2140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->launchCountrySelectionDialog(Ljava/lang/String;)V

    .line 2141
    return-void
.end method

.method public launchCountrySelectionDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryNameCode"    # Ljava/lang/String;

    .line 2148
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0, p1}, Lcom/hbb20/CountryCodeDialog;->openCountryCodeDialog(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V

    .line 2149
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 2369
    invoke-static {}, Lcom/hbb20/CountryCodeDialog;->clear()V

    .line 2370
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2371
    return-void
.end method

.method protected onUserTappedCountry(Lcom/hbb20/CCPCountry;)V
    .locals 2
    .param p1, "CCPCountry"    # Lcom/hbb20/CCPCountry;

    .line 2318
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-boolean v1, v0, Lcom/hbb20/CountryCodePicker;->rememberLastSelection:Z

    if-eqz v1, :cond_0

    .line 2319
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hbb20/CountryCodePicker;->storeSelectedCountryNameCode(Ljava/lang/String;)V

    .line 2321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 2322
    return-void
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 2364
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customClickListener:Landroid/view/View$OnClickListener;

    .line 2365
    return-void
.end method

.method refreshCustomMasterList()V
    .locals 8

    .line 1324
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1348
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v0, "localCCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1350
    .local v5, "nameCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v6

    .line 1351
    .local v6, "ccpCountry":Lcom/hbb20/CCPCountry;
    if-eqz v6, :cond_1

    .line 1352
    invoke-direct {p0, v6, v0}, Lcom/hbb20/CountryCodePicker;->isAlreadyInList(Lcom/hbb20/CCPCountry;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1353
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    .end local v5    # "nameCode":Ljava/lang/String;
    .end local v6    # "ccpCountry":Lcom/hbb20/CCPCountry;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1358
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1359
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    goto :goto_4

    .line 1361
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    goto :goto_4

    .line 1326
    .end local v0    # "localCCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1327
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    .line 1328
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object v0

    .line 1329
    .local v0, "libraryMasterList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    .local v2, "localCCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hbb20/CCPCountry;

    .line 1332
    .local v4, "ccpCountry":Lcom/hbb20/CCPCountry;
    iget-object v5, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1333
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    .end local v4    # "ccpCountry":Lcom/hbb20/CCPCountry;
    :cond_5
    goto :goto_2

    .line 1337
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1338
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    goto :goto_3

    .line 1340
    :cond_7
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    .line 1343
    .end local v0    # "libraryMasterList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    .end local v2    # "localCCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    :goto_3
    goto :goto_4

    .line 1344
    :cond_8
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    .line 1365
    :goto_4
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 1368
    .local v1, "ccpCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->log()V

    .line 1369
    .end local v1    # "ccpCountry":Lcom/hbb20/CCPCountry;
    goto :goto_5

    .line 1373
    :cond_9
    return-void
.end method

.method refreshPreferredCountries()V
    .locals 9

    .line 1290
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1293
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v0, "localCCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1295
    .local v5, "nameCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromCustomMasterList(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v6

    .line 1296
    .local v6, "ccpCountry":Lcom/hbb20/CCPCountry;
    if-eqz v6, :cond_1

    .line 1297
    invoke-direct {p0, v6, v0}, Lcom/hbb20/CountryCodePicker;->isAlreadyInList(Lcom/hbb20/CCPCountry;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1298
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    .end local v5    # "nameCode":Ljava/lang/String;
    .end local v6    # "ccpCountry":Lcom/hbb20/CCPCountry;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1303
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1304
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    goto :goto_2

    .line 1306
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    goto :goto_2

    .line 1291
    .end local v0    # "localCCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    .line 1309
    :goto_2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 1312
    .local v1, "CCPCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->log()V

    .line 1313
    .end local v1    # "CCPCountry":Lcom/hbb20/CCPCountry;
    goto :goto_3

    .line 1317
    :cond_5
    return-void
.end method

.method public registerCarrierNumberEditText(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editTextCarrierNumber"    # Landroid/widget/EditText;

    .line 1772
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V

    .line 1773
    return-void
.end method

.method public resetToDefaultCountry()V
    .locals 3

    .line 1640
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    .line 1641
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1642
    return-void
.end method

.method public setArrowColor(I)V
    .locals 3
    .param p1, "arrowColor"    # I

    .line 1898
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->arrowColor:I

    .line 1899
    const/16 v0, -0x63

    if-ne p1, v0, :cond_0

    .line 1900
    iget v1, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    if-eq v1, v0, :cond_1

    .line 1901
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1906
    :cond_1
    :goto_0
    return-void
.end method

.method public setArrowSize(I)V
    .locals 2
    .param p1, "arrowSize"    # I

    .line 1937
    if-lez p1, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1939
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1940
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1941
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1943
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setAutoDetectedCountry(Z)V
    .locals 4
    .param p1, "loadDefaultWhenFails"    # Z

    .line 2190
    const/4 v0, 0x0

    .line 2191
    .local v0, "successfullyDetected":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iget-object v2, v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2192
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iget-object v2, v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2200
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->detectLocaleCountry(Z)Z

    move-result v2

    move v0, v2

    goto :goto_1

    .line 2197
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->detectNetworkCountry(Z)Z

    move-result v2

    move v0, v2

    .line 2198
    goto :goto_1

    .line 2194
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/hbb20/CountryCodePicker;->detectSIMCountry(Z)Z

    move-result v2

    move v0, v2

    .line 2195
    nop

    .line 2203
    :goto_1
    if-eqz v0, :cond_0

    .line 2204
    goto :goto_2

    .line 2206
    :cond_0
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->failureListener:Lcom/hbb20/CountryCodePicker$FailureListener;

    if-eqz v2, :cond_1

    .line 2207
    invoke-interface {v2}, Lcom/hbb20/CountryCodePicker$FailureListener;->onCountryAutoDetectionFailed()V

    .line 2191
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2212
    .end local v1    # "i":I
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 2213
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    .end local v0    # "successfullyDetected":Z
    :cond_3
    goto :goto_3

    .line 2215
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2217
    sget-object v1, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoDetectCountry: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    if-eqz p1, :cond_4

    .line 2219
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->resetToDefaultCountry()V

    .line 2222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoDetectionFailureListener(Lcom/hbb20/CountryCodePicker$FailureListener;)V
    .locals 0
    .param p1, "failureListener"    # Lcom/hbb20/CountryCodePicker$FailureListener;

    .line 2121
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->failureListener:Lcom/hbb20/CountryCodePicker$FailureListener;

    .line 2122
    return-void
.end method

.method public setCcpClickable(Z)V
    .locals 2
    .param p1, "ccpClickable"    # Z

    .line 1432
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpClickable:Z

    .line 1433
    if-nez p1, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1435
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1436
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->countryCodeHolderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1440
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->relativeClickConsumer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1442
    :goto_0
    return-void
.end method

.method public setCcpDialogShowFlag(Z)V
    .locals 0
    .param p1, "ccpDialogShowFlag"    # Z

    .line 591
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowFlag:Z

    .line 592
    return-void
.end method

.method public setCcpDialogShowNameCode(Z)V
    .locals 0
    .param p1, "ccpDialogShowNameCode"    # Z

    .line 559
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowNameCode:Z

    .line 560
    return-void
.end method

.method public setCcpDialogShowPhoneCode(Z)V
    .locals 0
    .param p1, "ccpDialogShowPhoneCode"    # Z

    .line 543
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowPhoneCode:Z

    .line 544
    return-void
.end method

.method public setCcpDialogShowTitle(Z)V
    .locals 0
    .param p1, "ccpDialogShowTitle"    # Z

    .line 575
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpDialogShowTitle:Z

    .line 576
    return-void
.end method

.method public setContentColor(I)V
    .locals 3
    .param p1, "contentColor"    # I

    .line 1883
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    .line 1884
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1887
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->arrowColor:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewArrow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/hbb20/CountryCodePicker;->contentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1890
    :cond_0
    return-void
.end method

.method public setCountryAutoDetectionPref(Lcom/hbb20/CountryCodePicker$AutoDetectionPref;)V
    .locals 0
    .param p1, "selectedAutoDetectionPref"    # Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2314
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->selectedAutoDetectionPref:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2315
    return-void
.end method

.method public setCountryForNameCode(Ljava/lang/String;)V
    .locals 5
    .param p1, "countryNameCode"    # Ljava/lang/String;

    .line 1754
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1755
    .local v0, "country":Lcom/hbb20/CCPCountry;
    if-nez v0, :cond_1

    .line 1756
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    if-nez v1, :cond_0

    .line 1757
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    iget v4, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    invoke-static {v1, v2, v3, v4}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    .line 1759
    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    goto :goto_0

    .line 1761
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1763
    :goto_0
    return-void
.end method

.method public setCountryForPhoneCode(I)V
    .locals 5
    .param p1, "countryCode"    # I

    .line 1735
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1736
    .local v0, "ccpCountry":Lcom/hbb20/CCPCountry;
    if-nez v0, :cond_1

    .line 1737
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    if-nez v1, :cond_0

    .line 1738
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    iget v4, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    invoke-static {v1, v2, v3, v4}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    .line 1740
    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->defaultCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    goto :goto_0

    .line 1742
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1744
    :goto_0
    return-void
.end method

.method public setCountryPreference(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryPreference"    # Ljava/lang/String;

    .line 1974
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->countryPreference:Ljava/lang/String;

    .line 1975
    return-void
.end method

.method public setCurrentTextGravity(Lcom/hbb20/CountryCodePicker$TextGravity;)V
    .locals 1
    .param p1, "textGravity"    # Lcom/hbb20/CountryCodePicker$TextGravity;

    .line 673
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->currentTextGravity:Lcom/hbb20/CountryCodePicker$TextGravity;

    .line 674
    iget v0, p1, Lcom/hbb20/CountryCodePicker$TextGravity;->enumIndex:I

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->applyTextGravity(I)V

    .line 675
    return-void
.end method

.method public setCustomDialogTextProvider(Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;)V
    .locals 0
    .param p1, "customDialogTextProvider"    # Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;

    .line 2131
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customDialogTextProvider:Lcom/hbb20/CountryCodePicker$CustomDialogTextProvider;

    .line 2132
    return-void
.end method

.method public setCustomMasterCountries(Ljava/lang/String;)V
    .locals 0
    .param p1, "customMasterCountriesParam"    # Ljava/lang/String;

    .line 1404
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesParam:Ljava/lang/String;

    .line 1405
    return-void
.end method

.method setCustomMasterCountriesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;)V"
        }
    .end annotation

    .line 1383
    .local p1, "customMasterCountriesList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    .line 1384
    return-void
.end method

.method public setDefaultCountryUsingNameCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultCountryNameCode"    # Ljava/lang/String;

    .line 1568
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1569
    .local v0, "defaultCCPCountry":Lcom/hbb20/CCPCountry;
    if-nez v0, :cond_0

    goto :goto_0

    .line 1572
    :cond_0
    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryNameCode:Ljava/lang/String;

    .line 1573
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 1575
    :goto_0
    return-void
.end method

.method public setDefaultCountryUsingPhoneCode(I)V
    .locals 3
    .param p1, "defaultCountryCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1548
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1549
    .local v0, "defaultCCPCountry":Lcom/hbb20/CCPCountry;
    if-nez v0, :cond_0

    goto :goto_0

    .line 1552
    :cond_0
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    .line 1553
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/CCPCountry;)V

    .line 1555
    :goto_0
    return-void
.end method

.method public setDetectCountryWithAreaCode(Z)V
    .locals 0
    .param p1, "detectCountryWithAreaCode"    # Z

    .line 2325
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->detectCountryWithAreaCode:Z

    .line 2326
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    .line 2327
    return-void
.end method

.method public setDialogBackground(I)V
    .locals 0
    .param p1, "dialogBackgroundResId"    # I

    .line 1226
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogBackgroundResId:I

    .line 1227
    return-void
.end method

.method public setDialogBackgroundColor(I)V
    .locals 0
    .param p1, "dialogBackgroundColor"    # I

    .line 1213
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogBackgroundColor:I

    .line 1214
    return-void
.end method

.method public setDialogEventsListener(Lcom/hbb20/CountryCodePicker$DialogEventsListener;)V
    .locals 0
    .param p1, "dialogEventsListener"    # Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    .line 621
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->dialogEventsListener:Lcom/hbb20/CountryCodePicker$DialogEventsListener;

    .line 622
    return-void
.end method

.method public setDialogKeyboardAutoPopup(Z)V
    .locals 0
    .param p1, "dialogKeyboardAutoPopup"    # Z

    .line 1099
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->dialogKeyboardAutoPopup:Z

    .line 1100
    return-void
.end method

.method public setDialogSearchEditTextTintColor(I)V
    .locals 0
    .param p1, "dialogSearchEditTextTintColor"    # I

    .line 1239
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogSearchEditTextTintColor:I

    .line 1240
    return-void
.end method

.method public setDialogTextColor(I)V
    .locals 0
    .param p1, "dialogTextColor"    # I

    .line 1257
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTextColor:I

    .line 1258
    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;

    .line 1279
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFace:Landroid/graphics/Typeface;

    .line 1280
    const/16 v0, -0x63

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFaceStyle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    goto :goto_0

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1284
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 2010
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->dialogTypeFace:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    if-nez p1, :cond_0

    .line 2012
    const/16 p2, -0x63

    .line 2016
    :cond_0
    goto :goto_0

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2017
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "editText_registeredCarrierNumber"    # Landroid/widget/EditText;

    .line 1139
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    .line 1140
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->originalHint:Ljava/lang/String;

    .line 1143
    :cond_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateValidityTextWatcher()V

    .line 1144
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    .line 1145
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    .line 1146
    return-void
.end method

.method public setExcludedCountries(Ljava/lang/String;)V
    .locals 0
    .param p1, "excludedCountries"    # Ljava/lang/String;

    .line 1415
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->excludedCountriesParam:Ljava/lang/String;

    .line 1416
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 1417
    return-void
.end method

.method public setFastScrollerBubbleColor(I)V
    .locals 0
    .param p1, "fastScrollerBubbleColor"    # I

    .line 660
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleColor:I

    .line 661
    return-void
.end method

.method public setFastScrollerBubbleTextAppearance(I)V
    .locals 0
    .param p1, "fastScrollerBubbleTextAppearance"    # I

    .line 634
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerBubbleTextAppearance:I

    .line 635
    return-void
.end method

.method public setFastScrollerHandleColor(I)V
    .locals 0
    .param p1, "fastScrollerHandleColor"    # I

    .line 647
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->fastScrollerHandleColor:I

    .line 648
    return-void
.end method

.method public setFlagBorderColor(I)V
    .locals 1
    .param p1, "borderFlagColor"    # I

    .line 1914
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->borderFlagColor:I

    .line 1915
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->linearFlagBorder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1916
    return-void
.end method

.method public setFlagSize(I)V
    .locals 1
    .param p1, "flagSize"    # I

    .line 2049
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2050
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 2051
    return-void
.end method

.method public setFullNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "fullNumber"    # Ljava/lang/String;

    .line 1832
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/CCPCountry;->getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1833
    .local v0, "country":Lcom/hbb20/CCPCountry;
    if-nez v0, :cond_0

    .line 1834
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/CCPCountry;

    move-result-object v0

    .line 1835
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1836
    invoke-direct {p0, p1, v0}, Lcom/hbb20/CountryCodePicker;->detectCarrierNumber(Ljava/lang/String;Lcom/hbb20/CCPCountry;)Ljava/lang/String;

    move-result-object v1

    .line 1837
    .local v1, "carrierNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1838
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1839
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    goto :goto_0

    .line 1841
    :cond_1
    sget-object v2, Lcom/hbb20/CountryCodePicker;->TAG:Ljava/lang/String;

    const-string v3, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber()."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :goto_0
    return-void
.end method

.method public setHintExampleNumberEnabled(Z)V
    .locals 0
    .param p1, "hintExampleNumberEnabled"    # Z

    .line 2330
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberEnabled:Z

    .line 2331
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    .line 2332
    return-void
.end method

.method public setHintExampleNumberType(Lcom/hbb20/CountryCodePicker$PhoneNumberType;)V
    .locals 0
    .param p1, "hintExampleNumberType"    # Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2335
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->hintExampleNumberType:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2336
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    .line 2337
    return-void
.end method

.method public setImageViewFlag(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageViewFlag"    # Landroid/widget/ImageView;

    .line 768
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    .line 769
    return-void
.end method

.method public setInternationalFormattingOnly(Z)V
    .locals 1
    .param p1, "internationalFormattingOnly"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->internationalFormattingOnly:Z

    .line 197
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    .line 200
    :cond_0
    return-void
.end method

.method setLanguageToApply(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0
    .param p1, "languageToApply"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 958
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->languageToApply:Lcom/hbb20/CountryCodePicker$Language;

    .line 959
    return-void
.end method

.method public setNumberAutoFormattingEnabled(Z)V
    .locals 1
    .param p1, "numberAutoFormattingEnabled"    # Z

    .line 180
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->numberAutoFormattingEnabled:Z

    .line 181
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    .line 184
    :cond_0
    return-void
.end method

.method public setOnCountryChangeListener(Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;)V
    .locals 0
    .param p1, "onCountryChangeListener"    # Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

    .line 2040
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->onCountryChangeListener:Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

    .line 2041
    return-void
.end method

.method public setPhoneNumberValidityChangeListener(Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;)V
    .locals 1
    .param p1, "phoneNumberValidityChangeListener"    # Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    .line 2108
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    .line 2109
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2110
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 2111
    invoke-interface {p1, v0}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    .line 2113
    :cond_0
    return-void
.end method

.method public setSearchAllowed(Z)V
    .locals 0
    .param p1, "searchAllowed"    # Z

    .line 2098
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->searchAllowed:Z

    .line 2099
    return-void
.end method

.method setSelectedCountry(Lcom/hbb20/CCPCountry;)V
    .locals 5
    .param p1, "selectedCCPCountry"    # Lcom/hbb20/CCPCountry;

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->countryDetectionBasedOnAreaAllowed:Z

    .line 782
    const-string v1, ""

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 785
    if-nez p1, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    iget v4, p0, Lcom/hbb20/CountryCodePicker;->defaultCountryCode:I

    invoke-static {v1, v2, v3, v4}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;

    move-result-object p1

    .line 787
    if-nez p1, :cond_0

    .line 788
    return-void

    .line 792
    :cond_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    .line 794
    const-string v1, ""

    .line 797
    .local v1, "displayText":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    const-string v3, "  "

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpUseEmoji:Z

    if-eqz v2, :cond_3

    .line 798
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->ccpUseDummyEmojiForPreview:Z

    if-eqz v2, :cond_1

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\ud83c\udfc1\u200b "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 804
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hbb20/CCPCountry;->getFlagEmoji(Lcom/hbb20/CCPCountry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u200b "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 808
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hbb20/CCPCountry;->getFlagEmoji(Lcom/hbb20/CCPCountry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    if-eqz v2, :cond_4

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    :cond_4
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    if-eqz v2, :cond_6

    .line 819
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    if-eqz v2, :cond_5

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 822
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 827
    :cond_6
    :goto_1
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    const-string v4, "+"

    if-eqz v2, :cond_8

    .line 828
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    :cond_8
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 839
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    :cond_9
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->imageViewFlag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getFlagID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 844
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->onCountryChangeListener:Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;

    if-eqz v2, :cond_a

    .line 845
    invoke-interface {v2}, Lcom/hbb20/CountryCodePicker$OnCountryChangeListener;->onCountrySelected()V

    .line 847
    :cond_a
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateFormattingTextWatcher()V

    .line 849
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateHint()V

    .line 852
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    if-eqz v2, :cond_b

    .line 853
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isValidFullNumber()Z

    move-result v2

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->reportedValidity:Z

    .line 854
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->phoneNumberValidityChangeListener:Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;

    invoke-interface {v3, v2}, Lcom/hbb20/CountryCodePicker$PhoneNumberValidityChangeListener;->onValidityChanged(Z)V

    .line 858
    :cond_b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->countryDetectionBasedOnAreaAllowed:Z

    .line 861
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    if-eqz v2, :cond_c

    .line 863
    :try_start_0
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->editText_registeredCarrierNumber:Landroid/widget/EditText;

    iget v3, p0, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 864
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    goto :goto_2

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 871
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->updateCountryGroup()V

    .line 872
    return-void
.end method

.method public setShowFastScroller(Z)V
    .locals 0
    .param p1, "showFastScroller"    # Z

    .line 1112
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showFastScroller:Z

    .line 1113
    return-void
.end method

.method public setShowPhoneCode(Z)V
    .locals 1
    .param p1, "showPhoneCode"    # Z

    .line 604
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showPhoneCode:Z

    .line 605
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 606
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .line 1924
    if-lez p1, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1926
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 1927
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    .line 1929
    :cond_0
    return-void
.end method

.method public setTextView_selectedCountry(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView_selectedCountry"    # Landroid/widget/TextView;

    .line 760
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    .line 761
    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;

    .line 1995
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1996
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    goto :goto_0

    .line 1997
    :catch_0
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2000
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 2027
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->textView_selectedCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2028
    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    goto :goto_0

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2032
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showArrow(Z)V
    .locals 0
    .param p1, "showArrow"    # Z

    .line 1962
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showArrow:Z

    .line 1963
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->refreshArrowViewVisibility()V

    .line 1964
    return-void
.end method

.method public showCloseIcon(Z)V
    .locals 0
    .param p1, "showCloseIcon"    # Z

    .line 1125
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showCloseIcon:Z

    .line 1126
    return-void
.end method

.method public showFlag(Z)V
    .locals 1
    .param p1, "showFlag"    # Z

    .line 2054
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showFlag:Z

    .line 2055
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->refreshFlagVisibility()V

    .line 2056
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 2058
    :cond_0
    return-void
.end method

.method public showFullName(Z)V
    .locals 1
    .param p1, "showFullName"    # Z

    .line 2079
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showFullName:Z

    .line 2080
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 2081
    return-void
.end method

.method public showNameCode(Z)V
    .locals 1
    .param p1, "showNameCode"    # Z

    .line 1952
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->showNameCode:Z

    .line 1953
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1954
    return-void
.end method

.method storeSelectedCountryNameCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "selectedCountryNameCode"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->CCP_PREF_FILE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 527
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->selectionMemoryTag:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 531
    return-void
.end method

.method public useFlagEmoji(Z)V
    .locals 1
    .param p1, "useFlagEmoji"    # Z

    .line 2073
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ccpUseEmoji:Z

    .line 2074
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->refreshFlagVisibility()V

    .line 2075
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->selectedCCPCountry:Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 2076
    return-void
.end method
