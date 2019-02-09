.class public Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
.super Ljava/lang/Object;
.source "PushConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    }
.end annotation


# static fields
.field private static final IDENTIFIER_PUSH_CONFIG:Ljava/lang/String; = "push_config"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PUSH_CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.push"


# instance fields
.field private mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mGson:Lcom/google/gson/Gson;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 46
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 47
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 48
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mGson:Lcom/google/gson/Gson;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/googlepushservices/internal/PushConfigManager;Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    move-result-object v0

    return-object v0
.end method

.method private parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    .locals 8
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "config":Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mGson:Lcom/google/gson/Gson;

    const-class v4, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    move-object v1, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Could not parse incoming config"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public fetchCurrentConfigObservable()Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "push_config"

    const-string v4, "raw"

    iget-object v5, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "id":I
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    move-result-object v0

    .line 58
    .local v0, "defaultConfig":Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v3, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    invoke-interface {v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$3;

    invoke-direct {v3, p0}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$3;-><init>(Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    .line 59
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$2;

    invoke-direct {v3, p0}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$2;-><init>(Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    .line 65
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$1;

    invoke-direct {v3, p0}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$1;-><init>(Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    .line 71
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v0}, Lrx/Observable;->firstOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    .line 58
    return-object v2
.end method
