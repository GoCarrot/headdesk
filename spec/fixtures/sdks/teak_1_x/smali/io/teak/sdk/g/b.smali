.class public Lio/teak/sdk/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/g/c;


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
    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 69
    sput-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "BILLING_RESPONSE_RESULT_OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "BILLING_RESPONSE_RESULT_USER_CANCELED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "BILLING_RESPONSE_RESULT_DEVELOPER_ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "BILLING_RESPONSE_RESULT_ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/teak/sdk/g/b;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lio/teak/sdk/e/c;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lio/teak/sdk/g/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 268
    :goto_0
    return-object v0

    .line 230
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 233
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

    .line 235
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 236
    const-string v5, "ITEM_ID_LIST"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 238
    iget-object v0, p0, Lio/teak/sdk/g/b;->a:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

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

    .line 240
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_5

    .line 1272
    :try_start_1
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1273
    if-nez v0, :cond_1

    move v0, v2

    .line 243
    :goto_1
    if-eqz v0, :cond_4

    .line 244
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "google_play"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSkuDetails() failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 245
    goto/16 :goto_0

    .line 1275
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1276
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1277
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 1278
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_1

    .line 1280
    :cond_3
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v2, v3, v4, v5}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1281
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

    .line 251
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 247
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "google_play"

    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 248
    goto/16 :goto_0

    .line 255
    :cond_5
    :try_start_2
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 258
    new-instance v2, Lio/teak/sdk/e/c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "google_play"

    const-string v4, "SKU Details."

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v2

    .line 260
    goto/16 :goto_0

    .line 262
    :cond_6
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "google_play"

    const-string v3, "Mismatched input/output length for getSkuDetails()."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v0, v1

    .line 268
    goto/16 :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lio/teak/sdk/g/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lio/teak/sdk/g/b;->a:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Lio/teak/sdk/e/c;)V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v0, "purchase_token"

    const-string v1, "purchaseToken"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "purchase_time"

    const-string v1, "purchaseTime"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "product_id"

    const-string v1, "productId"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "orderId"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "order_id"

    const-string v1, "orderId"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    const-string v0, "product_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1219
    const-string v1, "inapp"

    invoke-direct {p0, v1, v0}, Lio/teak/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v1

    .line 1220
    if-nez v1, :cond_3

    .line 1221
    const-string v1, "subs"

    invoke-direct {p0, v1, v0}, Lio/teak/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    .line 203
    :goto_0
    if-eqz v0, :cond_1

    .line 204
    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    const-string v1, "price_currency_code"

    const-string v3, "price_currency_code"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "price_amount_micros"

    const-string v3, "price_amount_micros"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    :goto_1
    new-instance v0, Lio/teak/sdk/c/h;

    invoke-direct {v0, v2}, Lio/teak/sdk/c/h;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 216
    :goto_2
    return-void

    .line 207
    :cond_2
    const-string v1, "price_string"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "price_string"

    const-string v3, "price_string"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/g/b;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lio/teak/sdk/g/b;->d:Z

    return v0
.end method

.method static synthetic b(Lio/teak/sdk/g/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/g/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/teak/sdk/g/b;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lio/teak/sdk/g/b;->b:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lio/teak/sdk/g/b;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/teak/sdk/g/b;->d:Z

    .line 178
    iput-object v2, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

    .line 179
    iput-object v2, p0, Lio/teak/sdk/g/b;->b:Landroid/content/ServiceConnection;

    .line 180
    iput-object v2, p0, Lio/teak/sdk/g/b;->a:Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 300
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1287
    if-nez v0, :cond_3

    move v1, v2

    .line 310
    :goto_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "google_play.check_activity.bundle"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lio/teak/sdk/a;->a(Landroid/os/Bundle;)Lio/teak/sdk/e/c;

    move-result-object v4

    invoke-virtual {v4}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    sget-object v0, Lio/teak/sdk/g/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    if-eqz v0, :cond_2

    .line 317
    sget-object v5, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v6, "google_play.check_activity.response_code"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "RESPONSE_CODE"

    aput-object v8, v7, v2

    aput-object v0, v7, v9

    invoke-static {v7}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    :cond_2
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    if-nez v1, :cond_6

    .line 324
    :try_start_1
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, v3}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/teak/sdk/g/b;->a(Lio/teak/sdk/e/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1289
    :cond_3
    :try_start_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1290
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 1291
    :cond_4
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1292
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    goto :goto_1

    .line 1294
    :cond_5
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v1, v2, v3, v4}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1295
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

    .line 306
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 328
    :cond_6
    if-lez v1, :cond_0

    .line 329
    new-instance v0, Lio/teak/sdk/c/i;

    invoke-direct {v0, v1}, Lio/teak/sdk/c/i;-><init>(I)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 94
    iput-object p1, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

    .line 96
    new-instance v0, Lio/teak/sdk/g/b$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/g/b$1;-><init>(Lio/teak/sdk/g/b;)V

    iput-object v0, p0, Lio/teak/sdk/g/b;->b:Landroid/content/ServiceConnection;

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/teak/sdk/g/b;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "google_play"

    const-string v2, "Google Play Billing service unavailable on device."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 161
    :try_start_0
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 162
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

    .line 164
    iget-object v2, p0, Lio/teak/sdk/g/b;->a:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

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

    .line 165
    const-string v2, "BUY_INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 166
    if-eqz v2, :cond_0

    .line 167
    iget-object v1, p0, Lio/teak/sdk/g/b;->c:Landroid/content/Context;

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

    .line 171
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/teak/sdk/g/b;->a(Lio/teak/sdk/e/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
