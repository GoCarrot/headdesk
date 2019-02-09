.class public final Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;
.super Ljava/lang/Object;
.source "PushIntentService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushIntentService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGcmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpsightProvider:Ljavax/inject/Provider;
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
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "mGcmProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/android/gms/gcm/GoogleCloudMessaging;>;"
    .local p2, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mGcmProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mUpsightProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushIntentService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "mGcmProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/android/gms/gcm/GoogleCloudMessaging;>;"
    .local p1, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMGcm(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V
    .locals 0
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .param p1, "mGcm"    # Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 33
    return-void
.end method

.method public static injectMUpsight(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .param p1, "mUpsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 37
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V
    .locals 1
    .param p1, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mGcmProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-static {p1, v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->injectMGcm(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V

    .line 28
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->mUpsightProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    invoke-static {p1, v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->injectMUpsight(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Lcom/upsight/android/UpsightContext;)V

    .line 29
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService_MembersInjector;->injectMembers(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V

    return-void
.end method
