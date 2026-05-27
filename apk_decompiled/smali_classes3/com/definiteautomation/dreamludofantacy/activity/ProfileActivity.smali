.class public Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field private static final PERMISSION_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0xda

.field public static final REQUEST_CODE_PICK_GALLERY:I = 0x1

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0x2


# instance fields
.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field private countryCodePicker:Lcom/hbb20/CountryCodePicker;

.field private editTextEmail:Landroid/widget/EditText;

.field private editTextMobile:Landroid/widget/EditText;

.field private editTextName:Landroid/widget/EditText;

.field private editTextPassword:Landroid/widget/EditText;

.field private editTextWhatsApp:Landroid/widget/EditText;

.field private mUserDatabase:Lcom/google/firebase/database/DatabaseReference;

.field private profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

.field private profileTv:Landroid/widget/TextView;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field public saveButton:Landroid/widget/Button;

.field public stWhatsApp:Ljava/lang/String;

.field public strCountryCode:Ljava/lang/String;

.field public strEmail:Ljava/lang/String;

.field public strMobile:Ljava/lang/String;

.field public strName:Ljava/lang/String;

.field public strPassword:Ljava/lang/String;

.field private uriFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;

    .line 55
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method private onCaptureImageResultInstrument(Landroid/content/Intent;)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 349
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getStringImage(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->uriFile:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v1, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 352
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 355
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->uriFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->uploadPic(Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method private onGalleryImageResultInstrument(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 366
    .local v0, "saveUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getStringImage(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->uriFile:Ljava/lang/String;

    .line 369
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v2, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 374
    if-eqz v0, :cond_0

    .line 375
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->uriFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->uploadPic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private pickImage()V
    .locals 2

    .line 279
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 285
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private showAddProfilePicDialog()V
    .locals 3

    .line 261
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;

    invoke-direct {v0}, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;-><init>()V

    .line 262
    .local v0, "dialogFragment":Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;
    invoke-virtual {v0, p0}, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->setIPicModeSelectListener(Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment$IPicModeSelectListener;)V

    .line 263
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "picModeSelector"

    invoke-virtual {v0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/PicModeSelectDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private takePic()V
    .locals 3

    .line 288
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 289
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 292
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 297
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private updateProfile()V
    .locals 7

    .line 160
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strName:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strEmail:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strCountryCode:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextMobile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strMobile:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextWhatsApp:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->stWhatsApp:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strPassword:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->stWhatsApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "All fields are mandatory"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_FULL_NAME"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "KEY_USER_ID"

    const-string v2, "1234567890"

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v3, "KEY_EMAIL"

    invoke-virtual {v0, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->stWhatsApp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v3, "KEY_COUNTRY_CODE"

    invoke-virtual {v0, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v3, "KEY_MOBILE"

    invoke-virtual {v0, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strMobile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v0, "updateHashMap":Ljava/util/Map;
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strName:Ljava/lang/String;

    const-string v4, "name"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->mUserDatabase:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    sget-object v4, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 187
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strName:Ljava/lang/String;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->stWhatsApp:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5, v6}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateUserProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    .line 188
    .local v3, "callInfo":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity$1;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)V

    invoke-interface {v3, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 216
    .end local v0    # "updateHashMap":Ljava/util/Map;
    .end local v3    # "callInfo":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    :cond_2
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v3, "KEY_PASSWORD"

    invoke-virtual {v0, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strPassword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 219
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->strPassword:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateUserProfilePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 220
    .local v0, "callPass":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 248
    .end local v0    # "callPass":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public errorValidation()V
    .locals 3

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v2, "Error while opening the image file. Please try again."

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->finish()V

    .line 341
    return-void
.end method

.method public getStringImage(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bmp"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 301
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_0

    .line 302
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 304
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 305
    .local v1, "imageBytes":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public synthetic lambda$onCreate$0$ProfileActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ProfileActivity(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 133
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.CAMERA"

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xda

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->showAddProfilePicDialog()V

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->showAddProfilePicDialog()V

    .line 141
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$2$ProfileActivity(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 145
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.CAMERA"

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xda

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->showAddProfilePicDialog()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->showAddProfilePicDialog()V

    .line 153
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$3$ProfileActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 155
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->updateProfile()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "result"
        }
    .end annotation

    .line 310
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 311
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 313
    :try_start_0
    invoke-direct {p0, p3}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->onCaptureImageResultInstrument(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    goto :goto_2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->errorValidation()V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 317
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 318
    if-nez p2, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->userCancelled()V

    goto :goto_2

    .line 320
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    :try_start_1
    invoke-direct {p0, p3}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->onGalleryImageResultInstrument(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    :goto_1
    goto :goto_2

    .line 323
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->errorValidation()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->errorValidation()V

    .line 330
    :cond_3
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->setContentView(I)V

    .line 82
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 83
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 85
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v2, "Users"

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_USER_ID"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->mUserDatabase:Lcom/google/firebase/database/DatabaseReference;

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DatabaseReference;->keepSynced(Z)V

    .line 88
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 89
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 90
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 93
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$SueMNtSdPEVMLfemvBEnHtU3tQw;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$SueMNtSdPEVMLfemvBEnHtU3tQw;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f08016f

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextName:Landroid/widget/EditText;

    .line 96
    const v2, 0x7f08016d

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextEmail:Landroid/widget/EditText;

    .line 97
    const v2, 0x7f080132

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CountryCodePicker;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    .line 98
    const v2, 0x7f08016e

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextMobile:Landroid/widget/EditText;

    .line 99
    const v2, 0x7f080173

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextWhatsApp:Landroid/widget/EditText;

    .line 100
    const v2, 0x7f080171

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextPassword:Landroid/widget/EditText;

    .line 102
    const v2, 0x7f0802e3

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileTv:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0802e2

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 104
    const v2, 0x7f08031e

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->saveButton:Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextName:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v4, "KEY_FULL_NAME"

    invoke-virtual {v3, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextEmail:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v5, "KEY_EMAIL"

    invoke-virtual {v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->countryCodePicker:Lcom/hbb20/CountryCodePicker;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v5, "KEY_COUNTRY_CODE"

    invoke-virtual {v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hbb20/CountryCodePicker;->setCountryForPhoneCode(I)V

    .line 109
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextMobile:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v5, "KEY_MOBILE"

    invoke-virtual {v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextWhatsApp:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v5, "KEY_WHATSAPP"

    invoke-virtual {v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->editTextPassword:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v5, "KEY_PASSWORD"

    invoke-virtual {v3, v5}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_PROFILE_PHOTO"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x8

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v1, v5}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileTv:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 120
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    goto :goto_1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v2, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :try_start_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://dreamludo.definiteautomation.com/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f070222

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    goto :goto_1

    .line 126
    :catch_1
    move-exception v1

    .line 127
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 131
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileTv:Landroid/widget/TextView;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$GTzNWqtuSmg52dikcMFM3Pj0ejA;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$GTzNWqtuSmg52dikcMFM3Pj0ejA;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->profileIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$-4AobqmrxteiZQ61oBLzfuDDjlE;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$-4AobqmrxteiZQ61oBLzfuDDjlE;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)V

    invoke-virtual {v1, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->saveButton:Landroid/widget/Button;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$49X4SO4JVXjo0N8_H8Jy4UVDcuU;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ProfileActivity$49X4SO4JVXjo0N8_H8Jy4UVDcuU;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method public onPicModeSelected(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 252
    const-string v0, "Camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "action-camera"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "action-gallery"

    .line 253
    .local v0, "action":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->takePic()V

    goto :goto_1

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->pickImage()V

    .line 258
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 269
    const/16 v0, 0xda

    if-ne p1, v0, :cond_0

    .line 271
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->showAddProfilePicDialog()V

    .line 275
    :cond_0
    return-void
.end method

.method public uploadPic(Ljava/lang/String;)V
    .locals 6
    .param p1, "uriFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriFile"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v0, "updateHashMap":Ljava/util/Map;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload/profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v4, "KEY_USER_ID"

    invoke-virtual {v3, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "image"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumb_image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->mUserDatabase:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;->INSTANCE:Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$LsO9QUKe1IKWBcYLxoKdYhSZ80E;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 391
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1234567890"

    invoke-interface {v1, v3, v2, p1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->updateUserPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 392
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity$3;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity$3;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ProfileActivity;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 418
    return-void
.end method

.method public userCancelled()V
    .locals 2

    .line 333
    const-string v0, "User canceled."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    return-void
.end method
