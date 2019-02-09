.class public final Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;
.super Ljava/lang/Object;
.source "PushModule_ProvidePushConfigManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/upsight/android/googlepushservices/internal/PushModule;

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
.method public constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)V
    .locals 0
    .param p1, "module"    # Lcom/upsight/android/googlepushservices/internal/PushModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/PushModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;->module:Lcom/upsight/android/googlepushservices/internal/PushModule;

    .line 18
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/googlepushservices/internal/PushModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/PushModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;-><init>(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidePushConfigManager(Lcom/upsight/android/googlepushservices/internal/PushModule;Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .locals 2
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushModule;
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushModule;->providePushConfigManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;->module:Lcom/upsight/android/googlepushservices/internal/PushModule;

    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1, v0}, Lcom/upsight/android/googlepushservices/internal/PushModule;->providePushConfigManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvidePushConfigManagerFactory;->get()Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    move-result-object v0

    return-object v0
.end method
