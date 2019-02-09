.class public final Lcom/upsight/android/googlepushservices/internal/PushModule;
.super Ljava/lang/Object;
.source "PushModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 31
    return-void
.end method


# virtual methods
.method public provideGooglePushServicesApi(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .locals 0
    .param p1, "googlePushServices"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 139
    return-object p1
.end method

.method public providePushConfigManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-direct {v0, p1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;-><init>(Lcom/upsight/android/UpsightContext;)V

    return-object v0
.end method

.method provideSessionManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/session/SessionManager;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 42
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p1, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 43
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->sessionManager()Lcom/upsight/android/analytics/internal/session/SessionManager;

    move-result-object v1

    .line 47
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/upsight/android/googlepushservices/internal/PushModule$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/googlepushservices/internal/PushModule$1;-><init>(Lcom/upsight/android/googlepushservices/internal/PushModule;)V

    goto :goto_0
.end method

.method provideUpsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
