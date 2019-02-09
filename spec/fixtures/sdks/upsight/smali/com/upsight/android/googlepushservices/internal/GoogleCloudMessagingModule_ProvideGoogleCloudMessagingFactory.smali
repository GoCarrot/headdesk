.class public final Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;
.super Ljava/lang/Object;
.source "GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

.field private final upsightProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "module"    # Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;->module:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    .line 19
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 20
    return-void
.end method

.method public static create(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;-><init>(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideGoogleCloudMessaging(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;Lcom/upsight/android/UpsightContext;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 2
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;->provideGoogleCloudMessaging(Lcom/upsight/android/UpsightContext;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;->module:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1, v0}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;->provideGoogleCloudMessaging(Lcom/upsight/android/UpsightContext;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory;->get()Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    return-object v0
.end method
