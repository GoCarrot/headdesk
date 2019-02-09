.class public final Lio/teak/sdk/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/b/d$c;,
        Lio/teak/sdk/b/d$a;,
        Lio/teak/sdk/b/d$b;
    }
.end annotation


# static fields
.field public static final a:Lio/teak/sdk/b/d;

.field private static c:J

.field private static p:Ljava/lang/String;

.field private static final s:Lio/teak/sdk/n$a;

.field private static final t:Lio/teak/sdk/b/c;

.field private static final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/b/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Lio/teak/sdk/b/d;

.field private static final w:Lio/teak/sdk/b/c;


# instance fields
.field public b:Lio/teak/sdk/b/f;

.field private d:Lio/teak/sdk/b/d$b;

.field private e:Lio/teak/sdk/b/d$b;

.field private final f:Lio/teak/sdk/b/c;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Ljava/util/Date;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Date;

.field private o:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Lio/teak/sdk/n$a;

.field private final r:Lio/teak/sdk/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lio/teak/sdk/b/d;->c:J

    .line 78
    new-instance v0, Lio/teak/sdk/b/d;

    const-string v1, "Null Session"

    invoke-direct {v0, v1}, Lio/teak/sdk/b/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/d;->a:Lio/teak/sdk/b/d;

    .line 531
    new-instance v0, Lio/teak/sdk/b/d$11;

    invoke-direct {v0}, Lio/teak/sdk/b/d$11;-><init>()V

    sput-object v0, Lio/teak/sdk/b/d;->s:Lio/teak/sdk/n$a;

    .line 627
    new-instance v0, Lio/teak/sdk/b/c;

    invoke-direct {v0}, Lio/teak/sdk/b/c;-><init>()V

    sput-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/teak/sdk/b/d;->u:Ljava/util/ArrayList;

    .line 1032
    new-instance v0, Lio/teak/sdk/b/c;

    invoke-direct {v0}, Lio/teak/sdk/b/c;-><init>()V

    sput-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v0}, Lio/teak/sdk/b/d;-><init>(Lio/teak/sdk/b/d;Ljava/util/concurrent/Future;)V

    .line 159
    return-void
.end method

.method private constructor <init>(Lio/teak/sdk/b/d;Ljava/util/concurrent/Future;)V
    .locals 3
    .param p1    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Future;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/teak/sdk/b/d;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lio/teak/sdk/b/d$b;->b:Lio/teak/sdk/b/d$b;

    iput-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    .line 120
    iput-object v1, p0, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    .line 121
    new-instance v0, Lio/teak/sdk/b/c;

    invoke-direct {v0}, Lio/teak/sdk/b/c;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    .line 146
    iput-object v1, p0, Lio/teak/sdk/b/d;->o:Ljava/util/concurrent/Future;

    .line 460
    new-instance v0, Lio/teak/sdk/b/d$8;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/d$8;-><init>(Lio/teak/sdk/b/d;)V

    iput-object v0, p0, Lio/teak/sdk/b/d;->q:Lio/teak/sdk/n$a;

    .line 507
    new-instance v0, Lio/teak/sdk/b/d$10;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/d$10;-><init>(Lio/teak/sdk/b/d;)V

    iput-object v0, p0, Lio/teak/sdk/b/d;->r:Lio/teak/sdk/n$a;

    .line 167
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/d;->h:Ljava/util/Date;

    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/d;->i:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lio/teak/sdk/b/d;->o:Ljava/util/concurrent/Future;

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p1, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lio/teak/sdk/b/d;->m:Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b/d;->m:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/b/d;->q:Lio/teak/sdk/n$a;

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 176
    sget-object v0, Lio/teak/sdk/b/d$b;->c:Lio/teak/sdk/b/d$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z

    .line 177
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lio/teak/sdk/b/d$b;->b:Lio/teak/sdk/b/d$b;

    iput-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    .line 120
    iput-object v1, p0, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    .line 121
    new-instance v0, Lio/teak/sdk/b/c;

    invoke-direct {v0}, Lio/teak/sdk/b/c;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    .line 146
    iput-object v1, p0, Lio/teak/sdk/b/d;->o:Ljava/util/concurrent/Future;

    .line 460
    new-instance v0, Lio/teak/sdk/b/d$8;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/d$8;-><init>(Lio/teak/sdk/b/d;)V

    iput-object v0, p0, Lio/teak/sdk/b/d;->q:Lio/teak/sdk/n$a;

    .line 507
    new-instance v0, Lio/teak/sdk/b/d$10;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/d$10;-><init>(Lio/teak/sdk/b/d;)V

    iput-object v0, p0, Lio/teak/sdk/b/d;->r:Lio/teak/sdk/n$a;

    .line 153
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/d;->h:Ljava/util/Date;

    .line 154
    iput-object p1, p0, Lio/teak/sdk/b/d;->i:Ljava/lang/String;

    .line 155
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/teak/sdk/b/d;->l:Ljava/lang/String;

    return-object p1
.end method

.method static a()V
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lio/teak/sdk/b/d;->s:Lio/teak/sdk/n$a;

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 561
    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 73
    .line 2699
    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->lock()V

    .line 3035
    :try_start_0
    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3037
    :try_start_1
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    if-eqz v1, :cond_0

    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    invoke-direct {v1}, Lio/teak/sdk/b/d;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3038
    :cond_0
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 3039
    new-instance v2, Lio/teak/sdk/b/d;

    invoke-direct {v2}, Lio/teak/sdk/b/d;-><init>()V

    sput-object v2, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 3041
    if-eqz v1, :cond_3

    .line 3044
    iget-object v2, v1, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3045
    iget-object v1, v1, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    invoke-static {v1}, Lio/teak/sdk/b/d;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3053
    :cond_1
    :goto_0
    :try_start_2
    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    .line 2705
    const-string v1, "teakSessionProcessed"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2707
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 2708
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2710
    :try_start_3
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    if-ne v0, v2, :cond_2

    .line 2711
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    sget-object v2, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v2, v2, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    invoke-direct {v0, v2}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2714
    :cond_2
    :try_start_4
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2933
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 2934
    :goto_1
    return-void

    .line 3047
    :cond_3
    :try_start_5
    sget-object v1, Lio/teak/sdk/b/d;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3048
    sget-object v1, Lio/teak/sdk/b/d;->p:Ljava/lang/String;

    invoke-static {v1}, Lio/teak/sdk/b/d;->b(Ljava/lang/String;)V

    .line 3049
    const/4 v1, 0x0

    sput-object v1, Lio/teak/sdk/b/d;->p:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3053
    :catchall_0
    move-exception v0

    :try_start_6
    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2933
    :catchall_1
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 2714
    :catchall_2
    move-exception v0

    :try_start_7
    iget-object v1, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 2718
    :cond_4
    const-string v1, "teakSessionProcessed"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2720
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v3

    .line 2721
    const-string v1, "teakIsFirstLaunch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2725
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 2726
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2727
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v4, "session.attribution"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "deep_link"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 2728
    new-instance v1, Lio/teak/sdk/b/d$12;

    invoke-direct {v1, v2}, Lio/teak/sdk/b/d$12;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 2779
    :goto_2
    if-eqz v2, :cond_9

    .line 3938
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v4

    .line 3940
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lio/teak/sdk/b/d$4;

    invoke-direct {v5, v2, v4}, Lio/teak/sdk/b/d$4;-><init>(Ljava/util/concurrent/Future;Lio/teak/sdk/m;)V

    invoke-direct {v1, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4020
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2787
    :goto_3
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2788
    if-eqz v2, :cond_e

    .line 2789
    const-string v4, "teakNotifId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2790
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2798
    :goto_4
    if-eqz v2, :cond_a

    .line 2799
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v4, "session.attribution"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "teak_notif_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 2800
    new-instance v0, Lio/teak/sdk/b/d$2;

    invoke-direct {v0, v2}, Lio/teak/sdk/b/d$2;-><init>(Ljava/lang/String;)V

    .line 2835
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 2836
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lio/teak/sdk/b/d$3;

    invoke-direct {v5, v1, v2, v3}, Lio/teak/sdk/b/d$3;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;Lio/teak/sdk/m;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2904
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2908
    :cond_6
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v1, v1, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->b:Lio/teak/sdk/b/d$b;

    if-eq v1, v2, :cond_7

    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v1, v1, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->c:Lio/teak/sdk/b/d$b;

    if-ne v1, v2, :cond_b

    .line 2909
    :cond_7
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iput-object v0, v1, Lio/teak/sdk/b/d;->o:Ljava/util/concurrent/Future;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2933
    :goto_6
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    goto/16 :goto_1

    .line 2754
    :cond_8
    if-eqz v1, :cond_f

    .line 2756
    :try_start_8
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/b/d$13;

    invoke-direct {v2}, Lio/teak/sdk/b/d$13;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2773
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move-object v2, v1

    .line 2774
    goto/16 :goto_2

    :cond_9
    move-object v1, v0

    .line 2782
    goto :goto_3

    .line 2828
    :cond_a
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 2829
    goto :goto_5

    .line 2910
    :cond_b
    if-eqz v0, :cond_c

    .line 2911
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 2912
    new-instance v2, Lio/teak/sdk/b/d;

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/b/d;-><init>(Lio/teak/sdk/b/d;Ljava/util/concurrent/Future;)V

    sput-object v2, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 2913
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2915
    :try_start_9
    sget-object v0, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    invoke-direct {v1, v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z

    .line 2916
    sget-object v0, Lio/teak/sdk/b/d$b;->h:Lio/teak/sdk/b/d$b;

    invoke-direct {v1, v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2918
    :try_start_a
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    goto :goto_6

    :catchall_3
    move-exception v0

    iget-object v1, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 2922
    :cond_c
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 2923
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2925
    :try_start_b
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    if-ne v0, v2, :cond_d

    .line 2926
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    sget-object v2, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v2, v2, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    invoke-direct {v0, v2}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2929
    :cond_d
    :try_start_c
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    goto :goto_6

    :catchall_4
    move-exception v0

    iget-object v1, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_e
    move-object v2, v0

    goto/16 :goto_4

    :cond_f
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static a(Lio/teak/sdk/b/d$a;)V
    .locals 3
    .param p0    # Lio/teak/sdk/b/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 631
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 633
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    if-nez v0, :cond_0

    .line 634
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 636
    :try_start_1
    sget-object v0, Lio/teak/sdk/b/d;->u:Ljava/util/ArrayList;

    new-instance v1, Lio/teak/sdk/b/d$c;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/d$c;-><init>(Lio/teak/sdk/b/d$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    :try_start_2
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 659
    :goto_0
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 660
    return-void

    .line 638
    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v1, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 659
    :catchall_1
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 641
    :cond_0
    :try_start_4
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 642
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 644
    :try_start_5
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    if-ne v0, v2, :cond_1

    .line 645
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/b/d$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/d$c;-><init>(Lio/teak/sdk/b/d$a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 655
    :goto_1
    :try_start_6
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 647
    :cond_1
    :try_start_7
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 649
    :try_start_8
    sget-object v0, Lio/teak/sdk/b/d;->u:Ljava/util/ArrayList;

    new-instance v2, Lio/teak/sdk/b/d$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/d$c;-><init>(Lio/teak/sdk/b/d$a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 651
    :try_start_9
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 655
    :catchall_2
    move-exception v0

    :try_start_a
    iget-object v1, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 651
    :catchall_3
    move-exception v0

    :try_start_b
    sget-object v2, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v2}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0}, Lio/teak/sdk/b/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lio/teak/sdk/b/d$b;)Z
    .locals 10
    .param p1    # Lio/teak/sdk/b/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    iget-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 195
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    if-ne v0, p1, :cond_0

    .line 196
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "session.same_state"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lio/teak/sdk/b/d;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    move v0, v7

    :goto_0
    return v0

    .line 200
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    invoke-virtual {v0, p1}, Lio/teak/sdk/b/d$b;->a(Lio/teak/sdk/b/d$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "session.invalid_state"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "new_state"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lio/teak/sdk/b/d;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    iget-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    move v0, v7

    goto :goto_0

    .line 205
    :cond_1
    :try_start_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    sget-object v0, Lio/teak/sdk/b/d$5;->a:[I

    invoke-virtual {p1}, Lio/teak/sdk/b/d$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    :cond_2
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 286
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 287
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 313
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 216
    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lio/teak/sdk/b/d;->r:Lio/teak/sdk/n$a;

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    goto :goto_1

    .line 220
    :pswitch_1
    iget-object v0, p0, Lio/teak/sdk/b/d;->r:Lio/teak/sdk/n$a;

    invoke-static {v0}, Lio/teak/sdk/n;->b(Lio/teak/sdk/n$a;)V

    .line 222
    iget-object v0, p0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/b/d$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/d$1;-><init>(Lio/teak/sdk/b/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 233
    :pswitch_2
    iget-object v0, p0, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :pswitch_3
    iget-object v0, p0, Lio/teak/sdk/b/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 242
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "heartbeatService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lio/teak/sdk/b/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    aput-object v2, v0, v1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1318
    :cond_3
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v2

    .line 1325
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1326
    iget-object v0, p0, Lio/teak/sdk/b/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/teak/sdk/b/d$6;

    invoke-direct {v1, p0, v2}, Lio/teak/sdk/b/d$6;-><init>(Lio/teak/sdk/b/d;Lio/teak/sdk/m;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 248
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :try_start_4
    sget-object v0, Lio/teak/sdk/b/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/b/d$c;

    .line 251
    iget-object v2, p0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 255
    :catchall_1
    move-exception v0

    :try_start_5
    sget-object v1, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    :cond_4
    :try_start_6
    sget-object v0, Lio/teak/sdk/b/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 255
    :try_start_7
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    goto/16 :goto_1

    .line 260
    :pswitch_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/d;->n:Ljava/util/Date;

    .line 265
    iget-object v0, p0, Lio/teak/sdk/b/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_5

    .line 266
    iget-object v0, p0, Lio/teak/sdk/b/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/b/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 271
    :cond_5
    iget-object v0, p0, Lio/teak/sdk/b/d;->b:Lio/teak/sdk/b/f;

    if-eqz v0, :cond_2

    .line 272
    sget-object v0, Lio/teak/sdk/b/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/teak/sdk/b/d;->b:Lio/teak/sdk/b/f;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 277
    :pswitch_5
    iget-object v0, p0, Lio/teak/sdk/b/d;->q:Lio/teak/sdk/n$a;

    invoke-static {v0}, Lio/teak/sdk/n;->b(Lio/teak/sdk/n$a;)V

    goto/16 :goto_1

    .line 289
    :cond_6
    const-string v0, "state"

    iget-object v2, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "new_state"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "session_id"

    iget-object v2, p0, Lio/teak/sdk/b/d;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "session.invalid_values"

    invoke-virtual {v0, v2, v1}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 295
    sget-object v0, Lio/teak/sdk/b/d$b;->a:Lio/teak/sdk/b/d$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 313
    iget-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    move v0, v7

    goto/16 :goto_0

    .line 299
    :cond_7
    :try_start_8
    iget-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    iput-object v0, p0, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    .line 300
    iput-object p1, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    .line 302
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "session.state"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    iget-object v4, v4, Lio/teak/sdk/b/d$b;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "old_state"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    iget-object v4, v4, Lio/teak/sdk/b/d$b;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lio/teak/sdk/b/d;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 303
    new-instance v0, Lio/teak/sdk/c/m;

    iget-object v1, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    iget-object v2, p0, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    invoke-direct {v0, p0, v1, v2}, Lio/teak/sdk/c/m;-><init>(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;Lio/teak/sdk/b/d$b;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 305
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->c:Lio/teak/sdk/b/d$b;

    if-ne v1, v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, v0, Lio/teak/sdk/m;->d:Lio/teak/sdk/a/d;

    if-eqz v0, :cond_8

    .line 308
    sget-object v0, Lio/teak/sdk/b/d$b;->d:Lio/teak/sdk/b/d$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    .line 313
    iget-object v1, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    move v0, v8

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Lio/teak/sdk/b/d$b;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    return-object p1
.end method

.method static synthetic b(Lio/teak/sdk/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/teak/sdk/b/d;->m:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Lio/teak/sdk/b/d$a;)V
    .locals 3
    .param p0    # Lio/teak/sdk/b/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 664
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 666
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    if-nez v0, :cond_0

    .line 667
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 669
    :try_start_1
    sget-object v0, Lio/teak/sdk/b/d;->u:Ljava/util/ArrayList;

    new-instance v1, Lio/teak/sdk/b/d$c;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/d$c;-><init>(Lio/teak/sdk/b/d$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    :try_start_2
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 693
    :goto_0
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 694
    return-void

    .line 671
    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v1, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 693
    :catchall_1
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 674
    :cond_0
    :try_start_4
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 675
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 677
    :try_start_5
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    if-eq v0, v2, :cond_1

    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    if-ne v0, v2, :cond_2

    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->e:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    if-ne v0, v2, :cond_2

    .line 679
    :cond_1
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/b/d$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/d$c;-><init>(Lio/teak/sdk/b/d$a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 689
    :goto_1
    :try_start_6
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 681
    :cond_2
    :try_start_7
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 683
    :try_start_8
    sget-object v0, Lio/teak/sdk/b/d;->u:Ljava/util/ArrayList;

    new-instance v2, Lio/teak/sdk/b/d$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/d$c;-><init>(Lio/teak/sdk/b/d$a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 685
    :try_start_9
    sget-object v0, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 689
    :catchall_2
    move-exception v0

    :try_start_a
    iget-object v1, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 685
    :catchall_3
    move-exception v0

    :try_start_b
    sget-object v2, Lio/teak/sdk/b/d;->t:Lio/teak/sdk/b/c;

    invoke-virtual {v2}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
.end method

.method static synthetic b(Lio/teak/sdk/b/d;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lio/teak/sdk/b/d;->g()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 574
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 576
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    if-nez v0, :cond_0

    .line 577
    sput-object p0, Lio/teak/sdk/b/d;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :goto_0
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 602
    return-void

    .line 579
    :cond_0
    :try_start_1
    sget-object v1, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 580
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :try_start_2
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    new-instance v0, Lio/teak/sdk/b/d;

    sget-object v2, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    sget-object v3, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v3, v3, Lio/teak/sdk/b/d;->o:Ljava/util/concurrent/Future;

    invoke-direct {v0, v2, v3}, Lio/teak/sdk/b/d;-><init>(Lio/teak/sdk/b/d;Ljava/util/concurrent/Future;)V

    .line 585
    sget-object v2, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    sget-object v3, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    invoke-direct {v2, v3}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z

    .line 586
    sget-object v2, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    sget-object v3, Lio/teak/sdk/b/d$b;->h:Lio/teak/sdk/b/d$b;

    invoke-direct {v2, v3}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z

    .line 588
    sput-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    .line 591
    :cond_1
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iput-object p0, v0, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    .line 593
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v2, Lio/teak/sdk/b/d$b;->d:Lio/teak/sdk/b/d$b;

    if-ne v0, v2, :cond_2

    .line 594
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    invoke-direct {v0}, Lio/teak/sdk/b/d;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 597
    :cond_2
    :try_start_3
    iget-object v0, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 597
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, v1, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static b()Z
    .locals 2

    .prologue
    .line 564
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 566
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    invoke-direct {v0}, Lio/teak/sdk/b/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    iget-object v0, v0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v1, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 568
    :goto_0
    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    return v0

    .line 566
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
.end method

.method static synthetic c(Lio/teak/sdk/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Lio/teak/sdk/b/c;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lio/teak/sdk/b/d;->w:Lio/teak/sdk/b/c;

    return-object v0
.end method

.method static synthetic d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    return-object v0
.end method

.method static synthetic e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    return-object v0
.end method

.method static synthetic e()Lio/teak/sdk/b/d;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lio/teak/sdk/b/d;->v:Lio/teak/sdk/b/d;

    return-object v0
.end method

.method static synthetic f(Lio/teak/sdk/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 182
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v1, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 183
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lio/teak/sdk/b/d;->n:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lio/teak/sdk/b/d;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 184
    sget-object v0, Lio/teak/sdk/b/d$b;->h:Lio/teak/sdk/b/d$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$b;)Z

    .line 186
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/b/d;->d:Lio/teak/sdk/b/d$b;

    sget-object v1, Lio/teak/sdk/b/d$b;->h:Lio/teak/sdk/b/d$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 188
    :goto_0
    iget-object v1, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    return v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/d;->f:Lio/teak/sdk/b/c;

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
.end method

.method static synthetic g(Lio/teak/sdk/b/d;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->o:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 353
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/b/d$7;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/b/d$7;-><init>(Lio/teak/sdk/b/d;Lio/teak/sdk/m;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method static synthetic h(Lio/teak/sdk/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lio/teak/sdk/b/d;)V
    .locals 2

    .prologue
    .line 73
    .line 2484
    iget-object v0, p0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/b/d$9;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/d$9;-><init>(Lio/teak/sdk/b/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method static synthetic j(Lio/teak/sdk/b/d;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/teak/sdk/b/d;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lio/teak/sdk/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1076
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lio/teak/sdk/e/c;

    .line 2068
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2069
    const-string v6, "startDate"

    iget-object v7, p0, Lio/teak/sdk/b/d;->h:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1078
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
