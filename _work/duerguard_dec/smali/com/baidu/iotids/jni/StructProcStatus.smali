.class public Lcom/baidu/iotids/jni/StructProcStatus;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public break:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmrss"
    .end annotation
.end field

.field public case:I
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "tracer-pid"
    .end annotation
.end field

.field public catch:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmdata"
    .end annotation
.end field

.field public class:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmstk"
    .end annotation
.end field

.field public const:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmexe"
    .end annotation
.end field

.field public else:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmpeak"
    .end annotation
.end field

.field public final:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmlib"
    .end annotation
.end field

.field public for:Ljava/lang/String;
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "state"
    .end annotation
.end field

.field public goto:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmsize"
    .end annotation
.end field

.field public if:Ljava/lang/String;
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "name"
    .end annotation
.end field

.field public new:I
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "pid"
    .end annotation
.end field

.field public super:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmpte"
    .end annotation
.end field

.field public this:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmhwm"
    .end annotation
.end field

.field public throw:J
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "vmswap"
    .end annotation
.end field

.field public try:I
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "ppid"
    .end annotation
.end field

.field public while:I
    .annotation runtime Ld/b/a/a/a;
    .end annotation

    .annotation runtime Ld/b/a/a/c;
        value = "threads"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIJJJJJJJJJJI)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->if:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->for:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->new:I

    move v1, p4

    iput v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->try:I

    move v1, p5

    iput v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->case:I

    move-wide v1, p6

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->else:J

    move-wide v1, p8

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->goto:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->this:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->break:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->catch:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->class:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->const:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->final:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->super:J

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->throw:J

    move/from16 v1, p26

    iput v1, v0, Lcom/baidu/iotids/jni/StructProcStatus;->while:I

    return-void
.end method
