.class public final Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;
.super Ljava/lang/Object;
.source "UpsightGooglePushServicesExtension_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/UpsightGooglePushServicesExtension;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPushConfigManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpsightPushProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
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
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "mUpsightPushProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;>;"
    .local p2, "mPushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mUpsightPushProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mPushConfigManagerProvider:Ljavax/inject/Provider;

    .line 20
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightGooglePushServicesExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "mUpsightPushProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;>;"
    .local p1, "mPushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    new-instance v0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMPushConfigManager(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V
    .locals 0
    .param p0, "instance"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;
    .param p1, "mPushConfigManager"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .line 43
    return-void
.end method

.method public static injectMUpsightPush(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;)V
    .locals 0
    .param p0, "instance"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;
    .param p1, "mUpsightPush"    # Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    .line 38
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V
    .locals 1
    .param p1, "instance"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mUpsightPushProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    invoke-static {p1, v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->injectMUpsightPush(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;)V

    .line 32
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mPushConfigManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-static {p1, v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->injectMPushConfigManager(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    .line 33
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->injectMembers(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V

    return-void
.end method
