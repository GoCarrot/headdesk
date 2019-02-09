.class public final Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;
.super Ljava/lang/Object;
.source "DaggerGooglePushServicesComponent.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/internal/GooglePushServicesComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    }
.end annotation


# instance fields
.field private googlePushServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
            ">;"
        }
    .end annotation
.end field

.field private provideGoogleCloudMessagingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;"
        }
    .end annotation
.end field

.field private provideGooglePushServicesApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;"
        }
    .end annotation
.end field

.field private providePushConfigManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
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


# direct methods
.method private constructor <init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->initialize(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;-><init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;-><init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 37
    .line 38
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideUpsightContextFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 42
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 41
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->providePushConfigManagerProvider:Ljavax/inject/Provider;

    .line 43
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->providePushConfigManagerProvider:Ljavax/inject/Provider;

    .line 45
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->googlePushServicesProvider:Ljavax/inject/Provider;

    .line 50
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->googlePushServicesProvider:Ljavax/inject/Provider;

    .line 49
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGooglePushServicesApiProvider:Ljavax/inject/Provider;

    .line 54
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$200(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 53
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;->create(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGoogleCloudMessagingProvider:Ljavax/inject/Provider;

    .line 58
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 57
    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideSessionManagerFactory;->create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideSessionManagerFactory;

    move-result-object v0

    .line 56
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideSessionManagerProvider:Ljavax/inject/Provider;

    .line 59
    return-void
.end method

.method private injectPushClickIntentService(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;
    .locals 1
    .param p1, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideSessionManagerProvider:Ljavax/inject/Provider;

    .line 94
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 93
    invoke-static {p1, v0}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->injectMSessionManager(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;Lcom/upsight/android/analytics/internal/session/SessionManager;)V

    .line 95
    return-object p1
.end method

.method private injectPushIntentService(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .locals 1
    .param p1, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGoogleCloudMessagingProvider:Ljavax/inject/Provider;

    .line 87
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 86
    invoke-static {p1, v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->injectMGcm(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V

    .line 88
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    invoke-static {p1, v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->injectMUpsight(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Lcom/upsight/android/UpsightContext;)V

    .line 89
    return-object p1
.end method

.method private injectUpsightGooglePushServicesExtension(Lcom/upsight/android/UpsightGooglePushServicesExtension;)Lcom/upsight/android/UpsightGooglePushServicesExtension;
    .locals 1
    .param p1, "instance"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->provideGooglePushServicesApiProvider:Ljavax/inject/Provider;

    .line 79
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    .line 78
    invoke-static {p1, v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->injectMUpsightPush(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;)V

    .line 80
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->providePushConfigManagerProvider:Ljavax/inject/Provider;

    .line 81
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .line 80
    invoke-static {p1, v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->injectMPushConfigManager(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    .line 82
    return-object p1
.end method


# virtual methods
.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->inject(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V
    .locals 0
    .param p1, "arg0"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->injectUpsightGooglePushServicesExtension(Lcom/upsight/android/UpsightGooglePushServicesExtension;)Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 64
    return-void
.end method

.method public inject(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V
    .locals 0
    .param p1, "pushClickIntentService"    # Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->injectPushClickIntentService(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    .line 74
    return-void
.end method

.method public inject(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V
    .locals 0
    .param p1, "pushIntentService"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->injectPushIntentService(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    .line 69
    return-void
.end method
