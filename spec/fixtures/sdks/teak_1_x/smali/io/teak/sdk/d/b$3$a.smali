.class final Lio/teak/sdk/d/b$3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/d/b$a;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/b$3;Lio/teak/sdk/d/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p2, p0, Lio/teak/sdk/d/b$3$a;->a:Lio/teak/sdk/d/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/teak/sdk/d/b$3$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    .line 1213
    iget-object v0, p0, Lio/teak/sdk/d/b$3$a;->a:Lio/teak/sdk/d/b$a;

    iget-object v0, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1214
    iget-object v0, p0, Lio/teak/sdk/d/b$3$a;->a:Lio/teak/sdk/d/b$a;

    iget-object v0, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v4

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 1215
    iget-object v0, p0, Lio/teak/sdk/d/b$3$a;->a:Lio/teak/sdk/d/b$a;

    iget-object v0, v0, Lio/teak/sdk/d/b$a;->a:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 210
    return-void
.end method
