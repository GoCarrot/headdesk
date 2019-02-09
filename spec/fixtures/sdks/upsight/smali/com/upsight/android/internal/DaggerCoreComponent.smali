.class public final Lcom/upsight/android/internal/DaggerCoreComponent;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lcom/upsight/android/internal/CoreComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private provideApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationTokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field

.field private provideDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private provideJsonParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/gson/JsonParser;",
            ">;"
        }
    .end annotation
.end field

.field private provideLogWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/logger/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private provideObserveOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private providePublicKeyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkPluginProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideStorableInfoCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideTypeIdGeneratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsightContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsightLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/upsight/android/internal/DaggerCoreComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/internal/DaggerCoreComponent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lcom/upsight/android/internal/DaggerCoreComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/DaggerCoreComponent;->initialize(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;Lcom/upsight/android/internal/DaggerCoreComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/internal/DaggerCoreComponent$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/DaggerCoreComponent;-><init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;-><init>(Lcom/upsight/android/internal/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V
    .locals 7
    .param p1, "builder"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 75
    .line 77
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideApplicationContextFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 80
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$200(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/JsonModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/JsonModule_ProvideGsonFactory;->create(Lcom/upsight/android/internal/JsonModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideGsonProvider:Ljavax/inject/Provider;

    .line 85
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$300(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/storable/StorableModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideGsonProvider:Ljavax/inject/Provider;

    .line 84
    invoke-static {v0, v1}, Lcom/upsight/android/internal/persistence/storable/StorableModule_ProvideStorableInfoCacheFactory;->create(Lcom/upsight/android/internal/persistence/storable/StorableModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideStorableInfoCacheProvider:Ljavax/inject/Provider;

    .line 89
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideTypeIdGeneratorFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideTypeIdGeneratorProvider:Ljavax/inject/Provider;

    .line 93
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$400(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/SchedulersModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/SchedulersModule_ProvideSubscribeOnSchedulerFactory;->create(Lcom/upsight/android/internal/SchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 97
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$400(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/SchedulersModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/SchedulersModule_ProvideObserveOnSchedulerFactory;->create(Lcom/upsight/android/internal/SchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 96
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObserveOnSchedulerProvider:Ljavax/inject/Provider;

    .line 100
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideBusFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    .line 105
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$500(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/PersistenceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideStorableInfoCacheProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideTypeIdGeneratorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObserveOnSchedulerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    .line 104
    invoke-static/range {v0 .. v6}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->create(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideDataStoreProvider:Ljavax/inject/Provider;

    .line 114
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideLogWriterFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideLogWriterProvider:Ljavax/inject/Provider;

    .line 119
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$600(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/logger/LoggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideDataStoreProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideLogWriterProvider:Ljavax/inject/Provider;

    .line 118
    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/logger/LoggerModule_ProvideUpsightLoggerFactory;->create(Lcom/upsight/android/internal/logger/LoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 117
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    .line 124
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    .line 123
    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/PropertiesModule_ProvideSdkPluginFactory;->create(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSdkPluginProvider:Ljavax/inject/Provider;

    .line 131
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    .line 130
    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/PropertiesModule_ProvideApplicationTokenFactory;->create(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 129
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationTokenProvider:Ljavax/inject/Provider;

    .line 138
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    .line 137
    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->create(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->providePublicKeyProvider:Ljavax/inject/Provider;

    .line 145
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$800(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/UpsightContextModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSdkPluginProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationTokenProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->providePublicKeyProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideDataStoreProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    .line 144
    invoke-static/range {v0 .. v6}, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/internal/UpsightContextModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 154
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$200(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/JsonModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;->create(Lcom/upsight/android/internal/JsonModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideJsonParserProvider:Ljavax/inject/Provider;

    .line 159
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$500(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/PersistenceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideTypeIdGeneratorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideStorableInfoCacheProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->create(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 157
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBackgroundDataStoreProvider:Ljavax/inject/Provider;

    .line 165
    return-void
.end method


# virtual methods
.method public applicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public backgroundDataStore()Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBackgroundDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method public bus()Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method public gson()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideGsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public jsonParser()Lcom/google/gson/JsonParser;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideJsonParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method public observeOnScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObserveOnSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler;

    return-object v0
.end method

.method public subscribeOnScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler;

    return-object v0
.end method

.method public upsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
