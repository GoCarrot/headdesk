.class public final Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;
.super Ljava/lang/Object;
.source "GooglePushServices_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
        ">;"
    }
.end annotation


# instance fields
.field private final pushConfigManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "pushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->upsightProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->pushConfigManagerProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)",
            "Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p1, "pushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newGooglePushServices(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .locals 1
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "pushConfigManager"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .prologue
    .line 33
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .locals 3

    .prologue
    .line 22
    new-instance v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->pushConfigManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-direct {v2, v0, v1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->get()Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    move-result-object v0

    return-object v0
.end method
