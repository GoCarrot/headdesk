.class public final Lio/teak/sdk/b/d;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lio/teak/sdk/b/d;->a:Z

    .line 9
    const-wide/16 v0, 0x2

    sput-wide v0, Lio/teak/sdk/b/d;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    return-void
.end method


# virtual methods
.method public final lock()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 50
    return-void
.end method
