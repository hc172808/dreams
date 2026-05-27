.class public Leasypay/utils/EasyPaySecureSharedPref$Editor;
.super Ljava/lang/Object;
.source "EasyPaySecureSharedPref.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/utils/EasyPaySecureSharedPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field protected mEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Leasypay/utils/EasyPaySecureSharedPref;


# direct methods
.method public constructor <init>(Leasypay/utils/EasyPaySecureSharedPref;)V
    .locals 1
    .param p1, "this$0"    # Leasypay/utils/EasyPaySecureSharedPref;

    .line 173
    iput-object p1, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->this$0:Leasypay/utils/EasyPaySecureSharedPref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Leasypay/utils/EasyPaySecureSharedPref;->access$000(Leasypay/utils/EasyPaySecureSharedPref;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 175
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 208
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    return-void
.end method

.method public bridge synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 170
    invoke-virtual {p0}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->clear()Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 1

    .line 212
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 213
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 217
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->putBoolean(Ljava/lang/String;Z)Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 178
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->this$0:Leasypay/utils/EasyPaySecureSharedPref;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leasypay/utils/EasyPaySecureSharedPref;->access$100(Leasypay/utils/EasyPaySecureSharedPref;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    return-object p0
.end method

.method public bridge synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->putFloat(Ljava/lang/String;F)Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(Ljava/lang/String;F)Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 183
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->this$0:Leasypay/utils/EasyPaySecureSharedPref;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leasypay/utils/EasyPaySecureSharedPref;->access$100(Leasypay/utils/EasyPaySecureSharedPref;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    return-object p0
.end method

.method public bridge synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->putInt(Ljava/lang/String;I)Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putInt(Ljava/lang/String;I)Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 188
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->this$0:Leasypay/utils/EasyPaySecureSharedPref;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leasypay/utils/EasyPaySecureSharedPref;->access$100(Leasypay/utils/EasyPaySecureSharedPref;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    return-object p0
.end method

.method public bridge synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->putLong(Ljava/lang/String;J)Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putLong(Ljava/lang/String;J)Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 193
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->this$0:Leasypay/utils/EasyPaySecureSharedPref;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leasypay/utils/EasyPaySecureSharedPref;->access$100(Leasypay/utils/EasyPaySecureSharedPref;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 198
    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->this$0:Leasypay/utils/EasyPaySecureSharedPref;

    invoke-static {v1, p2}, Leasypay/utils/EasyPaySecureSharedPref;->access$100(Leasypay/utils/EasyPaySecureSharedPref;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    :goto_0
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 227
    .local p2, "arg1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Leasypay/utils/EasyPaySecureSharedPref$Editor;->remove(Ljava/lang/String;)Leasypay/utils/EasyPaySecureSharedPref$Editor;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Leasypay/utils/EasyPaySecureSharedPref$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    iget-object v0, p0, Leasypay/utils/EasyPaySecureSharedPref$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    return-object p0
.end method
