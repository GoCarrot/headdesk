.class public final Lio/teak/sdk/TeakNotification$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/TeakNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lio/teak/sdk/e/c;

.field private b:I


# direct methods
.method constructor <init>(Lio/teak/sdk/e/c;)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, ""

    .line 139
    :try_start_0
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$a;->a:Lio/teak/sdk/e/c;

    .line 144
    const-string v1, "grant_reward"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    .line 161
    :goto_1
    return-void

    .line 139
    :cond_0
    :try_start_1
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    const-string v1, "self_click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    goto :goto_1

    .line 148
    :cond_2
    const-string v1, "already_clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const/4 v0, -0x2

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    goto :goto_1

    .line 150
    :cond_3
    const-string v1, "too_many_clicks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    const/4 v0, -0x3

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    goto :goto_1

    .line 152
    :cond_4
    const-string v1, "exceed_max_clicks_for_day"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    const/4 v0, -0x4

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    goto :goto_1

    .line 154
    :cond_5
    const-string v1, "expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    const/4 v0, -0x5

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    goto :goto_1

    .line 156
    :cond_6
    const-string v1, "invalid_post"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    const/4 v0, -0x6

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    goto :goto_1

    .line 159
    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lio/teak/sdk/TeakNotification$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v1, :cond_0

    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v1}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "reward"

    const-string v3, "Teak is disabled, ignoring rewardFromRewardId()."

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-object v0

    .line 186
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    :cond_2
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "reward"

    const-string v3, "teakRewardId cannot be null or empty"

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 192
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/TeakNotification$a$1;

    invoke-direct {v2, v1}, Lio/teak/sdk/TeakNotification$a$1;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 202
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 204
    new-instance v2, Lio/teak/sdk/TeakNotification$a$2;

    invoke-direct {v2, p0, v1}, Lio/teak/sdk/TeakNotification$a$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-static {v2}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$a;)V

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 165
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s{status: %d, json: %s}"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lio/teak/sdk/TeakNotification$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lio/teak/sdk/TeakNotification$a;->a:Lio/teak/sdk/e/c;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$a;->a:Lio/teak/sdk/e/c;

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
