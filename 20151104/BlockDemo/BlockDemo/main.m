//
//  main.m
//  BlockDemo
//
//  Created by qingyun on 15/11/4.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
//声明了一个函数指针变量：pMyFunction
//这个指针存放的是函数的地址
//存放函数特点：函数必须是返回类型是空，参数也是空
//void (*pMyFunction)(void);
*/
//声明并定义了一个block对象，对象的名字叫theBlock
//给theBlock对象赋的值是：^{NSLog(@"hello,qingyunm");NSLog(@"hello,student");}

//void (^theBlock) () = ^{
//    NSLog(@"hello,qingyunm");
//    NSLog(@"hello,student");
//};

void myBlock(void (^block)());

/*
//给这种数据类型void (*) (void)取了一个别名叫：pMyFunctionRef;
typedef void (*pMyFunctionRef) (void);
//void (*pAnotherFunction)(void);

pMyFunctionRef pMyFunction;

//函数的名字是myFunction：实际函数的名字表示函数的地址
//这个函数返回类型是空
//函数的参数也是空
void myFunction(void);

void anotherFunction(void);

void callBack(pMyFunctionRef fun);
*/
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        //存放函数的地址
        pMyFunction = myFunction;
        //通过函数指针来调用函数
        pMyFunction();
        
        pMyFunction = anotherFunction;
        pMyFunction();
        
        //目的：想在创建一个函数指针变量，这个指针变量要存放的函数也是返回类型是空，形参是空
        pMyFunctionRef pAnotherFunction;
        pAnotherFunction = myFunction;
        pAnotherFunction();
        
        callBack(pAnotherFunction);
         */
        //调用了block块
       // theBlock();
        
        void (^theBlock)();
        theBlock = ^{NSLog(@"hahahahaha");};
        //^{ NSLog(@"hahahaha");};代码块
        //代码块形参作用域只在{}之间，出了block之后就是非法的。
        myBlock(^{
            NSLog(@"hahahaha");
        });
        
        myBlock(theBlock);
       
        /*
        //声明了一个block块的类型，类型的名称是：quare_block_type
        //以后如果想声明一个对象类型是整型，有一个整型参数的black块的时候，可以使用quare_block_type类型来声明
        typedef int (^quare_block_type) (int number);
        
        int (^quare_block)(int number) = ^(int number){return number * number;};//初始化
        //quare_block = ^int (int number){return number * number;};
        //由于代码块的返回类型，可以推导，所以返回类型可以省略，简写格式如下：
       // quare_block = ^(int number){return number * number;};
        //调用代码块
        int ret = quare_block(100);
        NSLog(@"the result is %d",ret);
        
        quare_block_type anotherBlack = ^(int anotherNumber){return anotherNumber = anotherNumber;};
        NSLog(@"the anotherBlock's result is %d",anotherBlack(10));
        //代码块在数组排序里的应用
        NSArray *student = @[@"Amir",@"KunPeng",@"ZhangXun",@"Sunchao",@"Yiran"];
    
        NSLog(@"unsorted array info:%@",student);
        
        NSArray *sortedStudent = [student sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {  return [obj1 compare:obj2];//取数组的每个成员进行比较,结果返回即可。
        }];
        NSLog(@"sorted student info:%@",sortedStudent);
         */
        
        typedef int (^blockType) (void);
        //1.关于局部变量(不可修改)
        /*
        int myInt = 100;
        int anotherInt = 200;
        //在block内部可以访问和其同一作用域的变量
        blockType blk = ^{return myInt * anotherInt;};
        
        int result = blk();
        
        NSLog(@"the result is %d",result);

        //根据结果的值还是20000，所以对于block来说，对于局部变量在其定义时实际已经赋值，后续是不能修改的。
        myInt = 10;
        anotherInt = 20;
        result = blk();
        NSLog(@"after modify myInt = 10,anotherInt = 20 ther result is %d",result);
        */
        
        //1.关于全局变量(可修改)
        /*
        static int myInt = 100;
        static int anotherInt = 200;
        blockType blk = ^{return myInt * anotherInt;};
        NSLog(@"the result is %d",blk());
        
        myInt = 10;
        anotherInt = 20;
        NSLog(@"after modify myInt = 10,and another = 20 the result is %d",blk());
        */
        
        //关于代码块的形参变量
        /*
        //number就是形参变量，其作用域只能在定义的代码块内部，出了代码之后number就不可见
        int (^quare_block) (int number) = ^(int number) {return  number * number;};
       // int number = number;一定是一个编译错误，因为number变量是代码的形参，在此已经超出其作用域范围了。
        */
        
        //关于修改代码块外部形参变量
        //int result = 100;//代码块外部变量
        __block int result = 700;//如果想修改代码块外部的局部变量，需要在声明这个变量的时候，用__block来修饰。
        //一下一行代码，一定不能通过编译，因为对于代码块之外的局部变量，是不能修改的，属于常量
        int (^quare_block) (int number) = ^(int number) {result = number * number; return result;};
        //int (^quare_block) (int number) = ^(int number) {return number * number;};
        quare_block(20);
        NSLog(@"after modify the int result with _block int result :%d",quare_block(20));
    }
    return 0;
}

void myBlock(void (^block)())
{
    block();
    //函数不能嵌套定义的
//    void myAnotherFunc()
//    {
//        NSLog(@"hello");
//    }
}

/*
//具体函数的实现
void myFunction(void)
{
    NSLog(@"qingyun");
}

void anotherFunction(void)
{
      NSLog(@"静宁");
}

//函数本身当参数传递
void callBack(pMyFunctionRef fun)
{
    fun();
}
*/