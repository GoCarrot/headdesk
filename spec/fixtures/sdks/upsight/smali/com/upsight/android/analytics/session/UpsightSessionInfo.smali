.class public Lcom/upsight/android/analytics/session/UpsightSessionInfo;
.super Ljava/lang/Object;
.source "UpsightSessionInfo.java"


# static fields
.field public static final NONE:Lcom/upsight/android/analytics/session/UpsightSessionInfo;

.field public static final SESSION_NUMBER_INVALID:I

.field public static final START_TIMESTAMP_INVALID:J


# instance fields
.field public final sessionNumber:I

.field public final startTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/session/UpsightSessionInfo;-><init>(IJ)V

    sput-object v0, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->NONE:Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "sessionNumber"    # I
    .param p2, "startTimestamp"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->sessionNumber:I

    .line 55
    iput-wide p2, p0, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->startTimestamp:J

    .line 56
    return-void
.end method

.method public static getLatest(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 39
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getLatestSessionInfo()Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    sget-object v1, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->NONE:Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    goto :goto_0
.end method
