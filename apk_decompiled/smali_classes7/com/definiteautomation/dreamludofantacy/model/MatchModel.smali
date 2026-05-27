.class public Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
.super Ljava/lang/Object;
.source "MatchModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;
    }
.end annotation


# instance fields
.field private current_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_time"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private is_joined:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_joined"
    .end annotation
.end field

.field private match_fee:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "match_fee"
    .end annotation
.end field

.field private parti1_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parti1_id"
    .end annotation
.end field

.field private parti1_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parti1_name"
    .end annotation
.end field

.field private parti1_status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parti1_status"
    .end annotation
.end field

.field private parti2_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parti2_id"
    .end annotation
.end field

.field private parti2_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parti2_name"
    .end annotation
.end field

.field private parti2_status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parti2_status"
    .end annotation
.end field

.field private play_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_time"
    .end annotation
.end field

.field private prize:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prize"
    .end annotation
.end field

.field private result:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;",
            ">;"
        }
    .end annotation
.end field

.field private result_status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_status"
    .end annotation
.end field

.field private start_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field private table_joined:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "table_joined"
    .end annotation
.end field

.field private table_size:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "table_size"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private whatsapp_no1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whatsapp_no1"
    .end annotation
.end field

.field private whatsapp_no2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whatsapp_no2"
    .end annotation
.end field

.field private win:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "win"
    .end annotation
.end field

.field private winner_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "winner_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_time()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->current_time:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_joined()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->is_joined:I

    return v0
.end method

.method public getMatch_fee()D
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->match_fee:D

    return-wide v0
.end method

.method public getParti1_id()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti1_id:Ljava/lang/String;

    return-object v0
.end method

.method public getParti1_name()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti1_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParti1_status()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti1_status:Ljava/lang/String;

    return-object v0
.end method

.method public getParti2_id()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti2_id:Ljava/lang/String;

    return-object v0
.end method

.method public getParti2_name()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti2_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParti2_status()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti2_status:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->play_time:Ljava/lang/String;

    return-object v0
.end method

.method public getPrize()D
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->prize:D

    return-wide v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->result:Ljava/util/List;

    return-object v0
.end method

.method public getResult_status()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->result_status:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getTable_joined()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->table_joined:I

    return v0
.end method

.method public getTable_size()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->table_size:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->type:I

    return v0
.end method

.method public getWhatsapp_no1()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->whatsapp_no1:Ljava/lang/String;

    return-object v0
.end method

.method public getWhatsapp_no2()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->whatsapp_no2:Ljava/lang/String;

    return-object v0
.end method

.method public getWin()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->win:I

    return v0
.end method

.method public getWinner_name()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->winner_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrent_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "current_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_time"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->current_time:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->id:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setIs_joined(I)V
    .locals 0
    .param p1, "is_joined"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_joined"
        }
    .end annotation

    .line 210
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->is_joined:I

    .line 211
    return-void
.end method

.method public setMatch_fee(D)V
    .locals 0
    .param p1, "match_fee"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_fee"
        }
    .end annotation

    .line 154
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->match_fee:D

    .line 155
    return-void
.end method

.method public setParti1_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "parti1_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parti1_id"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti1_id:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setParti1_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "parti1_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parti1_name"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti1_name:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setParti1_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "parti1_status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parti1_status"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti1_status:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setParti2_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "parti2_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parti2_id"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti2_id:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setParti2_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "parti2_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parti2_name"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti2_name:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setParti2_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "parti2_status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parti2_status"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->parti2_status:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setPlay_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "play_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "play_time"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->play_time:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setPrize(D)V
    .locals 0
    .param p1, "prize"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prize"
        }
    .end annotation

    .line 162
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->prize:D

    .line 163
    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;>;"
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->result:Ljava/util/List;

    .line 18
    return-void
.end method

.method public setResult_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "result_status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result_status"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->result_status:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "start_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start_time"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->start_time:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setTable_joined(I)V
    .locals 0
    .param p1, "table_joined"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "table_joined"
        }
    .end annotation

    .line 226
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->table_joined:I

    .line 227
    return-void
.end method

.method public setTable_size(I)V
    .locals 0
    .param p1, "table_size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "table_size"
        }
    .end annotation

    .line 170
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->table_size:I

    .line 171
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 178
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->type:I

    .line 179
    return-void
.end method

.method public setWhatsapp_no1(Ljava/lang/String;)V
    .locals 0
    .param p1, "whatsapp_no1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whatsapp_no1"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->whatsapp_no1:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setWhatsapp_no2(Ljava/lang/String;)V
    .locals 0
    .param p1, "whatsapp_no2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whatsapp_no2"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->whatsapp_no2:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setWin(I)V
    .locals 0
    .param p1, "win"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "win"
        }
    .end annotation

    .line 218
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->win:I

    .line 219
    return-void
.end method

.method public setWinner_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "winner_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "winner_name"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->winner_name:Ljava/lang/String;

    .line 307
    return-void
.end method
