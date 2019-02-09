.class Lcom/upsight/android/googlepushservices/internal/PushModule$1;
.super Ljava/lang/Object;
.source "PushModule.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/PushModule;->provideSessionManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/session/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/PushModule;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule$1;->this$0:Lcom/upsight/android/googlepushservices/internal/PushModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUserID()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public deleteUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method

.method public getBackgroundSession()Lcom/upsight/android/analytics/internal/session/Session;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "upsight.user.id.anonymous"

    return-object v0
.end method

.method public getCurrentUserSessionInfo()Lcom/upsight/android/analytics/session/UpsightUserSessionInfo;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/upsight/android/analytics/session/UpsightUserSessionInfo;->NONE:Lcom/upsight/android/analytics/session/UpsightUserSessionInfo;

    return-object v0
.end method

.method public getHomeCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestSessionInfo()Lcom/upsight/android/analytics/session/UpsightSessionInfo;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->NONE:Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    return-object v0
.end method

.method public getPrivacyApplicable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivacyConsent()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getSessions()Lcom/upsight/android/analytics/internal/session/SessionManager$Sessions;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCurrentCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentCountry"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public setHomeCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeCountry"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public setPrivacyApplicable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "privacyApplicable"    # Ljava/lang/Boolean;

    .prologue
    .line 88
    return-void
.end method

.method public setPrivacyConsent(Z)V
    .locals 0
    .param p1, "privacyConsent"    # Z

    .prologue
    .line 92
    return-void
.end method

.method public setUserID(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "preserve"    # Z

    .prologue
    .line 51
    return-void
.end method

.method public startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 1
    .param p1, "sessionInitializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopSession()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
