.class public Lcom/hbb20/InternationalPhoneTextWatcher;
.super Ljava/lang/Object;
.source "InternationalPhoneTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "Int\'l Phone TextWatcher"


# instance fields
.field private countryNameCode:Ljava/lang/String;

.field private countryPhoneCode:I

.field private internationalOnly:Z

.field lastFormatted:Landroid/text/Editable;

.field private mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z

.field private needUpdateForCountryChange:Z

.field phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countryNameCode"    # Ljava/lang/String;
    .param p3, "countryPhoneCode"    # I

    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hbb20/InternationalPhoneTextWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countryNameCode"    # Ljava/lang/String;
    .param p3, "countryPhoneCode"    # I
    .param p4, "internationalOnly"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    .line 34
    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    .line 57
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->createInstance(Landroid/content/Context;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/hbb20/InternationalPhoneTextWatcher;->updateCountry(Ljava/lang/String;I)V

    .line 61
    iput-boolean p4, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->internationalOnly:Z

    .line 62
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 225
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 226
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 227
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    const/4 v2, 0x1

    return v2

    .line 225
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private reformat(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 181
    const-string v0, ""

    .line 182
    .local v0, "internationalFormatted":Ljava/lang/String;
    iget-object v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "lastNonSeparator":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryPhoneCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "countryCallingCode":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->internationalOnly:Z

    const/16 v4, 0x30

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    .line 189
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 192
    .local v3, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_4

    .line 193
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 194
    .local v7, "c":C
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 195
    if-eqz v1, :cond_2

    .line 196
    iget-object v8, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v8, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_2
    move v1, v7

    .line 192
    .end local v7    # "c":C
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    .end local v6    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 202
    iget-object v6, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v6, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-boolean v6, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->internationalOnly:Z

    if-nez v6, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_9

    .line 207
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_8

    .line 208
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7

    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 211
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_8
    const-string v0, ""

    .line 216
    :cond_9
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, ""

    goto :goto_2

    :cond_a
    move-object v4, v0

    :goto_2
    return-object v4
.end method

.method private stopFormatting()V
    .locals 1

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    .line 221
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    .line 222
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 12
    .param p1, "s"    # Landroid/text/Editable;

    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    .end local p0    # "this":Lcom/hbb20/InternationalPhoneTextWatcher;
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 109
    monitor-exit p0

    return-void

    .line 113
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 114
    .local v0, "selectionEnd":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 117
    .local v3, "isCursorAtEnd":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/hbb20/InternationalPhoneTextWatcher;->reformat(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "formatted":Ljava/lang/String;
    const/4 v5, 0x0

    .line 121
    .local v5, "finalCursorPosition":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 123
    move v5, v0

    goto :goto_4

    .line 124
    :cond_4
    if-eqz v3, :cond_5

    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    goto :goto_4

    .line 130
    :cond_5
    const/4 v6, 0x0

    .line 131
    .local v6, "digitsBeforeCursor":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 132
    if-lt v7, v0, :cond_6

    .line 133
    goto :goto_2

    .line 135
    :cond_6
    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 136
    add-int/lit8 v6, v6, 0x1

    .line 131
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 142
    .end local v7    # "i":I
    :cond_8
    :goto_2
    const/4 v7, 0x0

    .restart local v7    # "i":I
    const/4 v8, 0x0

    .local v8, "digitPassed":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_b

    .line 143
    if-ne v8, v6, :cond_9

    .line 144
    move v5, v7

    .line 145
    goto :goto_4

    .line 147
    :cond_9
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 142
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 155
    .end local v6    # "digitsBeforeCursor":I
    .end local v7    # "i":I
    .end local v8    # "digitPassed":I
    :cond_b
    :goto_4
    if-nez v3, :cond_d

    .line 156
    :goto_5
    add-int/lit8 v6, v5, -0x1

    if-lez v6, :cond_c

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_c

    .line 157
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 163
    :cond_c
    move v11, v5

    goto :goto_6

    .line 155
    :cond_d
    move v11, v5

    .line 163
    .end local v5    # "finalCursorPosition":I
    .local v11, "finalCursorPosition":I
    :goto_6
    if-eqz v4, :cond_e

    .line 164
    :try_start_3
    iput-boolean v2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    .line 165
    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    move-object v5, p1

    move-object v8, v4

    invoke-interface/range {v5 .. v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 166
    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    .line 167
    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    .line 168
    invoke-static {p1, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_7
    nop

    .line 174
    :goto_8
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "selectionEnd":I
    .end local v3    # "isCursorAtEnd":Z
    .end local v4    # "formatted":Ljava/lang/String;
    .end local v11    # "finalCursorPosition":I
    .end local p1    # "s":Landroid/text/Editable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 80
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    if-lez p3, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/hbb20/InternationalPhoneTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    if-nez v0, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/hbb20/InternationalPhoneTextWatcher;->stopFormatting()V

    .line 87
    :cond_1
    return-void

    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 91
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    if-lez p4, :cond_1

    invoke-direct {p0, p1, p2, p4}, Lcom/hbb20/InternationalPhoneTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/hbb20/InternationalPhoneTextWatcher;->stopFormatting()V

    .line 98
    :cond_1
    return-void

    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method public updateCountry(Ljava/lang/String;I)V
    .locals 8
    .param p1, "countryNameCode"    # Ljava/lang/String;
    .param p2, "countryPhoneCode"    # I

    .line 65
    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryNameCode:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryPhoneCode:I

    .line 67
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    .line 68
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    .line 69
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    if-eqz v0, :cond_0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    .line 71
    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "onlyDigits":Ljava/lang/String;
    iget-object v2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    const/4 v3, 0x0

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move-object v5, v0

    invoke-interface/range {v2 .. v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    .line 75
    .end local v0    # "onlyDigits":Ljava/lang/String;
    :cond_0
    return-void
.end method
