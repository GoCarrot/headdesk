.class public Lcom/upsight/android/UpsightContext;
.super Landroid/content/ContextWrapper;
.source "UpsightContext.java"


# static fields
.field private static final IDENTIFIER_SDK_BUILD:Ljava/lang/String; = "upsight_sdk_build"

.field private static final IDENTIFIER_SDK_VERSION:Ljava/lang/String; = "upsight_sdk_version"


# instance fields
.field private final mAppToken:Ljava/lang/String;

.field private mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private final mExtensionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/UpsightExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mPublicKey:Ljava/lang/String;

.field private final mSdkPlugin:Ljava/lang/String;

.field private final mSid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 1
    .param p1, "baseContext"    # Landroid/content/Context;
    .param p2, "sdkPlugin"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.sdk_plugin"
        .end annotation
    .end param
    .param p3, "appToken"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.app_token"
        .end annotation
    .end param
    .param p4, "publicKey"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.public_key"
        .end annotation
    .end param
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p7, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    .line 72
    iput-object p2, p0, Lcom/upsight/android/UpsightContext;->mSdkPlugin:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/upsight/android/UpsightContext;->mAppToken:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/upsight/android/UpsightContext;->mPublicKey:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/upsight/android/UpsightContext;->mSid:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/upsight/android/UpsightContext;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 77
    iput-object p7, p0, Lcom/upsight/android/UpsightContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 78
    return-void
.end method


# virtual methods
.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mAppToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

    return-object v0
.end method

.method public getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method public getLogger()Lcom/upsight/android/logger/UpsightLogger;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBuild()Ljava/lang/String;
    .locals 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "upsight_sdk_build"

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/upsight/android/UpsightContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSdkPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mSdkPlugin:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "upsight_sdk_version"

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/upsight/android/UpsightContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;
    .locals 1
    .param p1, "extensionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/upsight/android/UpsightExtension",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lcom/upsight/android/Upsight;->isSdkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightExtension;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCreate(Lcom/upsight/android/UpsightCoreComponent;Ljava/util/Map;)V
    .locals 7
    .param p1, "coreComponent"    # Lcom/upsight/android/UpsightCoreComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightCoreComponent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/UpsightExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    iput-object p1, p0, Lcom/upsight/android/UpsightContext;->mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

    .line 91
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0}, Lcom/upsight/android/internal/persistence/Content;->getAuthoritytUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 92
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 93
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verify that the Upsight content provider is configured correctly in the Android Manifest:\n        <provider\n            android:name=\"com.upsight.android.internal.persistence.ContentProvider\"\n            android:authorities=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 96
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".upsight\"\n            android:enabled=\"true\"\n            android:exported=\"false\" />"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 104
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 107
    .local v2, "extension":Lcom/upsight/android/UpsightExtension;
    invoke-interface {p1}, Lcom/upsight/android/UpsightCoreComponent;->upsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/upsight/android/UpsightExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v3

    .line 108
    .local v3, "extensionComponent":Lcom/upsight/android/UpsightExtension$BaseComponent;
    invoke-virtual {v2, v3}, Lcom/upsight/android/UpsightExtension;->setComponent(Lcom/upsight/android/UpsightExtension$BaseComponent;)V

    .line 111
    iget-object v5, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    .end local v3    # "extensionComponent":Lcom/upsight/android/UpsightExtension$BaseComponent;
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 116
    .restart local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v2}, Lcom/upsight/android/UpsightExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/upsight/android/UpsightExtension$BaseComponent;->inject(Lcom/upsight/android/UpsightExtension;)V

    goto :goto_1

    .line 120
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 121
    .restart local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v2, p0}, Lcom/upsight/android/UpsightExtension;->onCreate(Lcom/upsight/android/UpsightContext;)V

    goto :goto_2

    .line 125
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 126
    .restart local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v2, p0}, Lcom/upsight/android/UpsightExtension;->onPostCreate(Lcom/upsight/android/UpsightContext;)V

    goto :goto_3

    .line 130
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_4
    return-void
.end method
