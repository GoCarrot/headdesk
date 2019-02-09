.class public Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;
.super Ljava/lang/Object;
.source "BackgroundSessionImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/Session;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mType:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;Landroid/content/Context;)V
    .locals 1
    .param p1, "initializer"    # Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;->getType()Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;->mType:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    .line 28
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;)Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "initializer"    # Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;

    .prologue
    .line 39
    new-instance v0, Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;

    invoke-direct {v0, p1, p0}, Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;-><init>(Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getCampaignID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousTos()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "past_session_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSessionNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;->mType:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    return-object v0
.end method

.method public updateDuration(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lastKnownTime"    # J

    .prologue
    .line 76
    return-void
.end method
