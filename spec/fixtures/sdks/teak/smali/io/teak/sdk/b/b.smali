.class public final Lio/teak/sdk/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/b/b$a;,
        Lio/teak/sdk/b/b$b;
    }
.end annotation


# static fields
.field private static final c:[[I


# instance fields
.field private a:Lio/teak/sdk/b/b$b;

.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/b/b;->c:[[I

    return-void

    :array_0
    .array-data 4
        0xf
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x14
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x1e
        0x32
    .end array-data

    :array_5
    .array-data 4
        0x32
        0x4b
    .end array-data

    :array_6
    .array-data 4
        0x4b
        0x96
    .end array-data

    :array_7
    .array-data 4
        0x96
        0x12c
    .end array-data

    :array_8
    .array-data 4
        0x258
        0x384
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lio/teak/sdk/b/b$b;->a:Lio/teak/sdk/b/b$b;

    iput-object v0, p0, Lio/teak/sdk/b/b;->a:Lio/teak/sdk/b/b$b;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/firebase/jobdispatcher/JobParameters;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/firebase/jobdispatcher/JobParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/firebase/jobdispatcher/JobParameters;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lio/teak/sdk/b/b$1;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/b/b$1;-><init>(Landroid/content/Context;Lcom/firebase/jobdispatcher/JobParameters;)V

    return-object v0
.end method

.method public static a(Lcom/firebase/jobdispatcher/JobParameters;)V
    .locals 13
    .param p0    # Lcom/firebase/jobdispatcher/JobParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 93
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v0, "JobService.JobType"

    const-string v3, "DeviceScreenState.Job"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/firebase/jobdispatcher/JobParameters;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {p0}, Lcom/firebase/jobdispatcher/JobParameters;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string v3, "ActiveNotifications"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ActiveNotifications"

    .line 102
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v3, "DeviceScreenState.DelayIndex"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 107
    :goto_1
    const/16 v3, 0x8

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    const-string v3, "DeviceScreenState.DelayIndex"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "teak.animation"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "delay_index"

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x2

    const-string v7, "timestamp"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    sget-object v3, Lio/teak/sdk/b/b;->c:[[I

    aget-object v0, v3, v0

    .line 113
    sget-object v3, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    const-string v4, "DeviceScreenState.Job"

    invoke-virtual {v3, v4, v2}, Lio/teak/sdk/TeakInstance;->jobBuilder(Ljava/lang/String;Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v2

    aget v1, v0, v1

    aget v0, v0, v12

    .line 114
    invoke-static {v1, v0}, Lcom/firebase/jobdispatcher/Trigger;->executionWindow(II)Lcom/firebase/jobdispatcher/JobTrigger$ExecutionWindowTrigger;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/jobdispatcher/Job$Builder;->setTrigger(Lcom/firebase/jobdispatcher/JobTrigger;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/Job$Builder;->build()Lcom/firebase/jobdispatcher/Job;

    move-result-object v0

    .line 116
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v1, v1, Lio/teak/sdk/TeakInstance;->dispatcher:Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

    invoke-virtual {v1, v0}, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->mustSchedule(Lcom/firebase/jobdispatcher/Job;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/b$b;Lio/teak/sdk/b/b$a;)V
    .locals 7

    .prologue
    .line 69
    iget-object v1, p0, Lio/teak/sdk/b/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/b;->a:Lio/teak/sdk/b/b$b;

    invoke-virtual {v0, p1}, Lio/teak/sdk/b/b$b;->a(Lio/teak/sdk/b/b$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lio/teak/sdk/b/b;->a:Lio/teak/sdk/b/b$b;

    .line 72
    iput-object p1, p0, Lio/teak/sdk/b/b;->a:Lio/teak/sdk/b/b$b;

    .line 74
    invoke-interface {p2, p1}, Lio/teak/sdk/b/b$a;->a(Lio/teak/sdk/b/b$b;)V

    .line 76
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "teak.animation"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "old_state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "new_state"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
