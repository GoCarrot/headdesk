.class public Lcom/upsight/android/unity/UpsightPlugin;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Upsight-Unity"


# instance fields
.field private mExtensions:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/unity/IUpsightExtensionManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    .line 62
    invoke-static {}, Lcom/upsight/android/unity/UpsightPlugin;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Attempted to create UpsightPlugin while Upsight SDK is disabled."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/upsight/android/unity/UnityBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 70
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 71
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    sget-object v4, Lcom/upsight/android/logger/UpsightLogger$Level;->ERROR:Lcom/upsight/android/logger/UpsightLogger$Level;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 73
    new-instance v2, Lcom/upsight/android/unity/UpsightPlugin$1;

    invoke-direct {v2, p0, v0}, Lcom/upsight/android/unity/UpsightPlugin$1;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Landroid/app/Activity;)V

    invoke-static {v2}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 81
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Upsight-Unity"

    const-string v3, "Critical Error: Exception thrown while initializing. Upsight will NOT work!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    throw v1
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/upsight/android/unity/UpsightPlugin;->parseJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v0

    return-object v0
.end method

.method private static addJsonElementToPublisherData(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 3
    .param p0, "pubData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "keyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "element"    # Lcom/google/gson/JsonElement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 504
    :try_start_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 507
    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    .line 509
    .local v1, "value":Lcom/google/gson/JsonPrimitive;
    if-eqz v1, :cond_1

    .line 510
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 519
    .end local v1    # "value":Lcom/google/gson/JsonPrimitive;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 512
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "value":Lcom/google/gson/JsonPrimitive;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 513
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    goto :goto_0

    .line 519
    .end local v1    # "value":Lcom/google/gson/JsonPrimitive;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 514
    .restart local v1    # "value":Lcom/google/gson/JsonPrimitive;
    :cond_4
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Z)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/upsight/android/unity/UnityBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/Upsight;->isSdkEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static parseJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .locals 9
    .param p0, "json"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 475
    new-instance v5, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v5}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    .line 477
    .local v5, "pubData":Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 479
    :try_start_0
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v7, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 482
    .local v2, "element":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 483
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 484
    .local v4, "object":Lcom/google/gson/JsonObject;
    if-eqz v4, :cond_1

    .line 485
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 486
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 487
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 488
    .local v6, "value":Lcom/google/gson/JsonElement;
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    .line 489
    invoke-static {v5, v3, v6}, Lcom/upsight/android/unity/UpsightPlugin;->addJsonElementToPublisherData(Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "object":Lcom/google/gson/JsonObject;
    .end local v6    # "value":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 499
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-virtual {v5}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v7

    return-object v7

    .line 494
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAppToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getApplicationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestSessionNumber()I
    .locals 2

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1}, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->getLatest(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v1

    iget v1, v1, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->sessionNumber:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLatestSessionStartTimestamp()J
    .locals 4

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1}, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->getLatest(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->startTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-wide v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getManagedBool(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 354
    .local v2, "val":Z
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    move-result-object v1

    .line 355
    .local v1, "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 363
    .end local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :goto_0
    return v2

    .line 358
    .restart local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :cond_0
    const-string v3, "Upsight-Unity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed bool, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    .end local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getManagedFloat(Ljava/lang/String;)F
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 324
    .local v2, "val":F
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    move-result-object v1

    .line 325
    .local v1, "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 333
    .end local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :goto_0
    return v2

    .line 328
    .restart local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :cond_0
    const-string v3, "Upsight-Unity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed float, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getManagedInt(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 339
    .local v2, "val":I
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    move-result-object v1

    .line 340
    .local v1, "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 348
    .end local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :goto_0
    return v2

    .line 343
    .restart local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :cond_0
    const-string v3, "Upsight-Unity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed int, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    .end local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getManagedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 307
    const/4 v3, 0x0

    .line 309
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v4, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    move-result-object v2

    .line 310
    .local v2, "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v2}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 318
    .end local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :goto_0
    return-object v3

    .line 313
    .restart local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :cond_0
    const-string v4, "Upsight-Unity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for managed string, please check your UXM schema"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getOptOutStatus()Z
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get(Lcom/upsight/android/UpsightContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getSdkPlugin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAttributesBool(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getBoolean(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 276
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 283
    .end local v1    # "value":Ljava/lang/Boolean;
    :goto_0
    return v2

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUserAttributesDatetime(Ljava/lang/String;)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v4, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDatetime(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 289
    .local v3, "value":Ljava/util/Date;
    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 291
    .local v0, "datetimeMs":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 297
    .end local v0    # "datetimeMs":J
    .end local v3    # "value":Ljava/util/Date;
    :goto_0
    return-wide v4

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public getUserAttributesFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getFloat(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 250
    .local v1, "value":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 257
    .end local v1    # "value":Ljava/lang/Float;
    :goto_0
    return v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUserAttributesInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getInteger(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 263
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 270
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUserAttributesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getString(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onApplicationPaused()V
    .locals 3

    .prologue
    .line 525
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/unity/IUpsightExtensionManager;

    .line 526
    .local v0, "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    invoke-interface {v0}, Lcom/upsight/android/unity/IUpsightExtensionManager;->onApplicationPaused()V

    goto :goto_0

    .line 528
    .end local v0    # "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    :cond_0
    return-void
.end method

.method public onApplicationResumed()V
    .locals 3

    .prologue
    .line 531
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/unity/IUpsightExtensionManager;

    .line 532
    .local v0, "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    invoke-interface {v0}, Lcom/upsight/android/unity/IUpsightExtensionManager;->onApplicationResumed()V

    goto :goto_0

    .line 534
    .end local v0    # "extension":Lcom/upsight/android/unity/IUpsightExtensionManager;
    :cond_0
    return-void
.end method

.method public purgeLocation()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$3;

    invoke-direct {v0, p0}, Lcom/upsight/android/unity/UpsightPlugin$3;-><init>(Lcom/upsight/android/unity/UpsightPlugin;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public recordAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 383
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$10;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method public recordAttributionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "campaign"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "creative"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 452
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/unity/UpsightPlugin$14;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public recordGooglePlayPurchase(ILjava/lang/String;DDLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "quantity"    # I
    .param p2, "currency"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "price"    # D
    .param p5, "totalPrice"    # D
    .param p7, "product"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "reponseCode"    # I
    .param p9, "inAppPurchaseData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "inAppDataSignature"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 431
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$13;

    move-object v1, p0

    move-object/from16 v2, p11

    move/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/upsight/android/unity/UpsightPlugin$13;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method public recordMilestoneEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 394
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$11;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public recordMonetizationEvent(DLjava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "totalPrice"    # D
    .param p3, "currency"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "product"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "price"    # D
    .param p7, "resolution"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "quantity"    # I
    .param p9, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 406
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$12;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p9

    move-object v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/upsight/android/unity/UpsightPlugin$12;-><init>(Lcom/upsight/android/unity/UpsightPlugin;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;I)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public recordSessionlessAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 372
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$9;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public registerExtension(Lcom/upsight/android/unity/IUpsightExtensionManager;)V
    .locals 2
    .param p1, "extension"    # Lcom/upsight/android/unity/IUpsightExtensionManager;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mExtensions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    .local v0, "successful":Z
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-interface {p1, v1}, Lcom/upsight/android/unity/IUpsightExtensionManager;->init(Lcom/upsight/android/UpsightContext;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setLocation(DD)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 149
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/unity/UpsightPlugin$2;-><init>(Lcom/upsight/android/unity/UpsightPlugin;DD)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;)V
    .locals 4
    .param p1, "logLevel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "verbose"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "Upsight-Unity"

    const-string v2, "enabling verbose logs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, ".*"

    const-class v3, Lcom/upsight/android/logger/UpsightLogger$Level;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    invoke-static {p1}, Lcom/upsight/android/logger/UpsightLogger$Level;->valueOf(Ljava/lang/String;)Lcom/upsight/android/logger/UpsightLogger$Level;

    move-result-object v3

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOptOutStatus(Z)V
    .locals 2
    .param p1, "optOutStatus"    # Z

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->set(Lcom/upsight/android/UpsightContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUserAttributesBool(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .prologue
    .line 218
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$7;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public setUserAttributesDatetime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J

    .prologue
    .line 227
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$8;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/upsight/android/unity/UpsightPlugin$8;-><init>(Lcom/upsight/android/unity/UpsightPlugin;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public setUserAttributesFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 200
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$5;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;F)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public setUserAttributesInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 209
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$6;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public setUserAttributesString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    new-instance v0, Lcom/upsight/android/unity/UpsightPlugin$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/unity/UpsightPlugin$4;-><init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
