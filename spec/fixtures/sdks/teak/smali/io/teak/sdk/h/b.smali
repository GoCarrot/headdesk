.class public Lio/teak/sdk/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/h/c;


# static fields
.field private static final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 55
    sput-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "BILLING_RESPONSE_RESULT_OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "BILLING_RESPONSE_RESULT_USER_CANCELED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "BILLING_RESPONSE_RESULT_DEVELOPER_ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "BILLING_RESPONSE_RESULT_ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/teak/sdk/h/b;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lio/teak/sdk/e/c;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lio/teak/sdk/h/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 254
    :goto_0
    return-object v0

    .line 216
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 219
    const-string v4, "getSkuDetails"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 221
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string v5, "ITEM_ID_LIST"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 224
    iget-object v0, p0, Lio/teak/sdk/h/b;->a:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 226
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_5

    .line 1258
    :try_start_1
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1259
    if-nez v0, :cond_1

    move v0, v2

    .line 229
    :goto_1
    if-eqz v0, :cond_4

    .line 230
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "google_play"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSkuDetails() failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 231
    goto/16 :goto_0

    .line 1261
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1262
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1263
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 1264
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_1

    .line 1266
    :cond_3
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "google_play"

    const-string v4, "Unexpected type for bundle response code."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "class"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1267
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected type for bundle response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 233
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "google_play"

    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 234
    goto/16 :goto_0

    .line 241
    :cond_5
    :try_start_2
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 244
    new-instance v2, Lio/teak/sdk/e/c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 245
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "google_play"

    const-string v4, "SKU Details."

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v2

    .line 246
    goto/16 :goto_0

    .line 248
    :cond_6
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "google_play"

    const-string v3, "Mismatched input/output length for getSkuDetails()."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v0, v1

    .line 254
    goto/16 :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lio/teak/sdk/h/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lio/teak/sdk/h/b;->a:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Lio/teak/sdk/e/c;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/teak/sdk/e/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 181
    :cond_0
    const-string v0, "purchase_token"

    const-string v1, "purchaseToken"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "purchase_time"

    const-string v1, "purchaseTime"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "product_id"

    const-string v1, "productId"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "orderId"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "order_id"

    const-string v1, "orderId"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    const-string v0, "product_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1205
    const-string v1, "inapp"

    invoke-direct {p0, v1, v0}, Lio/teak/sdk/h/b;->a(Ljava/lang/String;Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v1

    .line 1206
    if-nez v1, :cond_4

    .line 1207
    const-string v1, "subs"

    invoke-direct {p0, v1, v0}, Lio/teak/sdk/h/b;->a(Ljava/lang/String;Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    .line 189
    :goto_0
    if-eqz v0, :cond_2

    .line 190
    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    const-string v1, "price_currency_code"

    const-string v2, "price_currency_code"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "price_amount_micros"

    const-string v2, "price_amount_micros"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_2
    :goto_1
    new-instance v0, Lio/teak/sdk/c/h;

    invoke-direct {v0, p2}, Lio/teak/sdk/c/h;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 202
    :goto_2
    return-void

    .line 193
    :cond_3
    const-string v1, "price_string"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    const-string v1, "price_string"

    const-string v2, "price_string"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/h/b;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lio/teak/sdk/h/b;->d:Z

    return v0
.end method

.method static synthetic b(Lio/teak/sdk/h/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/h/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/teak/sdk/h/b;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lio/teak/sdk/h/b;->b:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lio/teak/sdk/h/b;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/teak/sdk/h/b;->d:Z

    .line 164
    iput-object v2, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    .line 165
    iput-object v2, p0, Lio/teak/sdk/h/b;->b:Landroid/content/ServiceConnection;

    .line 166
    iput-object v2, p0, Lio/teak/sdk/h/b;->a:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 286
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1273
    if-nez v0, :cond_3

    move v1, v2

    .line 296
    :goto_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "google_play.check_activity.bundle"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lio/teak/sdk/c;->a(Landroid/os/Bundle;)Lio/teak/sdk/e/c;

    move-result-object v4

    invoke-virtual {v4}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 298
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    sget-object v0, Lio/teak/sdk/h/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    if-eqz v0, :cond_2

    .line 303
    sget-object v5, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v6, "google_play.check_activity.response_code"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "RESPONSE_CODE"

    aput-object v8, v7, v2

    aput-object v0, v7, v9

    invoke-static {v7}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    :cond_2
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    if-nez v1, :cond_6

    .line 310
    :try_start_1
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, v3}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/teak/sdk/h/b;->a(Lio/teak/sdk/e/c;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1275
    :cond_3
    :try_start_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1276
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 1277
    :cond_4
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1278
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    goto :goto_1

    .line 1280
    :cond_5
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "google_play"

    const-string v3, "Unexpected type for bundle response code."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "class"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1281
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 292
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 314
    :cond_6
    if-lez v1, :cond_0

    .line 315
    new-instance v0, Lio/teak/sdk/c/i;

    invoke-direct {v0, v1, v10}, Lio/teak/sdk/c/i;-><init>(ILjava/util/Map;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 80
    iput-object p1, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    .line 82
    new-instance v0, Lio/teak/sdk/h/b$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/h/b$1;-><init>(Lio/teak/sdk/h/b;)V

    iput-object v0, p0, Lio/teak/sdk/h/b;->b:Landroid/content/ServiceConnection;

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/teak/sdk/h/b;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "google_play"

    const-string v2, "Google Play Billing service unavailable on device."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 147
    :try_start_0
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    const-string v2, "getBuyIntent"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lio/teak/sdk/h/b;->a:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "inapp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 151
    const-string v2, "BUY_INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 152
    if-eqz v2, :cond_0

    .line 153
    iget-object v1, p0, Lio/teak/sdk/h/b;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lio/teak/sdk/h/b;->a(Lio/teak/sdk/e/c;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
