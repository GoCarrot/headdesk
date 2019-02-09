.class public Lcom/upsight/android/unity/UnitySessionCallbacks;
.super Ljava/lang/Object;
.source "UnitySessionCallbacks.java"

# interfaces
.implements Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;


# static fields
.field protected static final TAG:Ljava/lang/String; = "UnitySessionCallbacks"

.field private static mShouldSynchronizeManagedVariables:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/upsight/android/unity/UnitySessionCallbacks;->mShouldSynchronizeManagedVariables:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/upsight/android/unity/UnitySessionCallbacks;->mShouldSynchronizeManagedVariables:Z

    return v0
.end method

.method public static setShouldSynchronizeManagedVariables(Z)V
    .locals 0
    .param p0, "shouldSynchronizeManagedVariables"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lcom/upsight/android/unity/UnitySessionCallbacks;->mShouldSynchronizeManagedVariables:Z

    .line 30
    return-void
.end method


# virtual methods
.method public onResume(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Lcom/upsight/android/analytics/session/UpsightSessionInfo;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/analytics/provider/UpsightSessionContext;
    .param p2, "resumedSessionInfo"    # Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    .prologue
    .line 63
    return-void
.end method

.method public onResumed(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 67
    const-string v0, "sessionDidResume"

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onStart(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Lcom/upsight/android/analytics/session/UpsightSessionInfo;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/analytics/provider/UpsightSessionContext;
    .param p2, "previousSessionInfo"    # Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    .prologue
    .line 35
    new-instance v0, Lcom/upsight/android/unity/UnitySessionCallbacks$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/unity/UnitySessionCallbacks$1;-><init>(Lcom/upsight/android/unity/UnitySessionCallbacks;)V

    invoke-static {p1, v0}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;->registerHandler(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V

    .line 53
    return-void
.end method

.method public onStarted(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 57
    const-string v0, "sessionDidStart"

    invoke-static {v0}, Lcom/upsight/android/unity/UnityBridge;->UnitySendMessage(Ljava/lang/String;)V

    .line 58
    return-void
.end method
