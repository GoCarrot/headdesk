.class public Lcom/upsight/android/analytics/internal/session/SessionImpl;
.super Ljava/lang/Object;
.source "SessionImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/Session;


# instance fields
.field private final mCampaignId:Ljava/lang/Integer;

.field private final mInitialSessionStartTs:Ljava/lang/Long;

.field private final mMessageId:Ljava/lang/Integer;

.field private final mPastSessionTime:Ljava/lang/Long;

.field private final mSessionNum:Ljava/lang/Integer;

.field private final mType:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/internal/session/SessionInitializer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1, "initializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;
    .param p2, "sessionNum"    # Ljava/lang/Integer;
    .param p3, "initialSessionStartTs"    # Ljava/lang/Long;
    .param p4, "pastSessionTime"    # Ljava/lang/Long;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Lcom/upsight/android/analytics/internal/session/SessionInitializer;->getType()Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mType:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    .line 52
    invoke-interface {p1}, Lcom/upsight/android/analytics/internal/session/SessionInitializer;->getCampaignID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mCampaignId:Ljava/lang/Integer;

    .line 53
    invoke-interface {p1}, Lcom/upsight/android/analytics/internal/session/SessionInitializer;->getMessageID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mMessageId:Ljava/lang/Integer;

    .line 54
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mSessionNum:Ljava/lang/Integer;

    .line 55
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mInitialSessionStartTs:Ljava/lang/Long;

    .line 56
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mPastSessionTime:Ljava/lang/Long;

    .line 57
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p2, "initializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    const/high16 v6, -0x80000000

    .line 72
    const-string v5, "session_num"

    invoke-static {p0, v5, v6}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 76
    .local v4, "sessionNum":I
    const-string v5, "session_start_ts"

    invoke-static {p0, v5, v8, v9}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 80
    .local v0, "initialSessionStartTs":J
    if-eq v4, v6, :cond_0

    cmp-long v5, v0, v8

    if-nez v5, :cond_1

    .line 81
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->incrementAndCreate(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v5

    .line 88
    :goto_0
    return-object v5

    .line 85
    :cond_1
    const-string v5, "past_session_time"

    const-wide/16 v6, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 88
    .local v2, "pastSessionTime":J
    new-instance v5, Lcom/upsight/android/analytics/internal/session/SessionImpl;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v5, p2, v6, v7, v8}, Lcom/upsight/android/analytics/internal/session/SessionImpl;-><init>(Lcom/upsight/android/analytics/internal/session/SessionInitializer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static getLatestSessionInfo(Landroid/content/Context;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    .line 133
    const-string v1, "session_num"

    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "lastKnownSessionNum":I
    const-string v1, "session_start_ts"

    invoke-static {p0, v1, v6, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 138
    .local v2, "lastKnownSessionStartTs":J
    if-lez v0, :cond_0

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 140
    new-instance v1, Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/upsight/android/analytics/session/UpsightSessionInfo;-><init>(IJ)V

    .line 142
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->NONE:Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    goto :goto_0
.end method

.method public static incrementAndCreate(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p2, "initializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    const-wide/16 v10, 0x0

    .line 105
    const-string v7, "session_num"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 109
    .local v6, "sessionNum":I
    invoke-interface {p1}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    .line 112
    .local v0, "currentTime":J
    const-string v7, "session_num"

    invoke-static {p0, v7, v6}, Lcom/upsight/android/internal/util/PreferencesHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 113
    const-string v7, "session_start_ts"

    invoke-static {p0, v7, v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 116
    const-string v7, "current_session_duration"

    invoke-static {p0, v7, v10, v11}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 118
    .local v2, "lastSessionTime":J
    const-string v7, "past_session_time"

    invoke-static {p0, v7, v10, v11}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    add-long v4, v8, v2

    .line 120
    .local v4, "pastSessionTime":J
    const-string v7, "current_session_duration"

    invoke-static {p0, v7, v10, v11}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 121
    const-string v7, "past_session_time"

    invoke-static {p0, v7, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 123
    new-instance v7, Lcom/upsight/android/analytics/internal/session/SessionImpl;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v7, p2, v8, v9, v10}, Lcom/upsight/android/analytics/internal/session/SessionImpl;-><init>(Lcom/upsight/android/analytics/internal/session/SessionInitializer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v7
.end method


# virtual methods
.method public declared-synchronized getCampaignID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mCampaignId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mMessageId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviousTos()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mPastSessionTime:Ljava/lang/Long;

    return-object v0
.end method

.method public declared-synchronized getSessionNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mSessionNum:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mInitialSessionStartTs:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mType:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    return-object v0
.end method

.method public updateDuration(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lastKnownTime"    # J

    .prologue
    .line 177
    const-string v0, "current_session_duration"

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mInitialSessionStartTs:Ljava/lang/Long;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    .line 177
    invoke-static {p1, v0, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 179
    return-void
.end method
