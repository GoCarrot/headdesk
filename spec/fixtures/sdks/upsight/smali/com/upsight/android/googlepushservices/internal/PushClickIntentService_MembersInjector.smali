.class public final Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;
.super Ljava/lang/Object;
.source "PushClickIntentService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "mSessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->mSessionManagerProvider:Ljavax/inject/Provider;

    .line 14
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "mSessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;

    invoke-direct {v0, p0}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMSessionManager(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;Lcom/upsight/android/analytics/internal/session/SessionManager;)V
    .locals 0
    .param p0, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;
    .param p1, "mSessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 29
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V
    .locals 1
    .param p1, "instance"    # Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->mSessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-static {p1, v0}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->injectMSessionManager(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;Lcom/upsight/android/analytics/internal/session/SessionManager;)V

    .line 24
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService_MembersInjector;->injectMembers(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V

    return-void
.end method
