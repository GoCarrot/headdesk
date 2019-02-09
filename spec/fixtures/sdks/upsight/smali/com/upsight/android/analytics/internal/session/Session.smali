.class public interface abstract Lcom/upsight/android/analytics/internal/session/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionInitializer;


# static fields
.field public static final PREFERENCES_KEY_CURRENT_SESSION_DURATION:Ljava/lang/String; = "current_session_duration"

.field public static final PREFERENCES_KEY_PAST_SESSION_TIME:Ljava/lang/String; = "past_session_time"

.field public static final PREFERENCES_KEY_SESSION_NUM:Ljava/lang/String; = "session_num"

.field public static final PREFERENCES_KEY_SESSION_START_TS:Ljava/lang/String; = "session_start_ts"

.field public static final SESSION_NUM_BASE_OFFSET:I


# virtual methods
.method public abstract getPreviousTos()Ljava/lang/Long;
.end method

.method public abstract getSessionNumber()Ljava/lang/Integer;
.end method

.method public abstract getStartTimestamp()Ljava/lang/Long;
.end method

.method public abstract updateDuration(Landroid/content/Context;J)V
.end method
